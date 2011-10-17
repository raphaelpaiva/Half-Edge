#ifndef RENDER_H
#define RENDER_H

#include <QThread>
#include <QPixmap>
#include <QTimer>
#include <QPainter>
#include <QDebug>
#include <CommandQueue.h>
#include <Interface.h>

#define INCPOS      100
#define INCZ        0.5
#define ZOOMLIMIT   10.0
#define MARGEM      0.05

class Render : public QThread
{
	Q_OBJECT

signals:
        void renderizado(const QImage &screen);

        
public slots:
    void updateScreen(int w, int y);
    void recebeArquivo(const QString &);

                
public:
        Render(int w, int y, CommandQueue *c);

    void run(void);

private:
        void atualizaScreen(void);
        void incX();
        void decX();
        void incY();
        void decY();
        void incZoom();
        void decZoom();
        QPoint transforma(const QPointF &);
        QPointF destransforma(const QPoint &);
        void renderiza(void);
        void renderizaFaces(void);
        void renderizaFace(HalfEdge *h,QImage*b ,QPen pen);
        void renderizaFaceExterna(QPen*);
        void renderizaArestas(void);
        void renderizaVertices(void);
        void renderizaFront(void);
        void click(void);
        //void escolha(void);
        void reiniciaBuffers(int w, int h);
        void verticeSelecionado(void);
        void arestaSelecionada(void);
        void faceSelecionada(void);
        bool dentroFace(HalfEdge* h, QPointF p);
        void renderizaComponente(HalfEdge *h,QImage* b,QPen pen);
        bool componenteFaceUnica(HalfEdge *h);
        void deleta();
        void vdv();
        void toggle_inserir_vertice();
        void inserir_vertice(QPointF p);
        void salvar_arquivo();
        void deletar_vertice();

        Vertex* vsel;
        HalfEdge* hsel;
        Face* fsel;
        QImage* screen;
        QImage* buffer;
        QImage* backBuffer;
        QImage* frontBuffer;
        double zoom;
        CommandQueue *cmdq;
        QPoint *ponto;
        QPoint *sel;
        int screenW;
        int screenH;
        bool mostraPonto;
        bool mostraAresta;
        bool mostraFace;
        bool modo_inserir_vertice;
        Interface interface;
        QPen arestaScreen;
        QPen selecionadoScreen;
        QPen vizinhoScreen;

        QRgb corArestaGrossa;
        QRgb corVerticeGrosso;
        QRgb corFace;
        QRgb corFaceExt;

        QPen faceExternaBack;
        QPen arestaGrossaBack;
        QPen verticeGrossoBack;
};

uint qHash(const QPointF&);

#endif
