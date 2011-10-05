#include <MainWindow.h>
#include <QPainter>
#include <Qt>
#include <CommandQueue.h>

MainWindow::MainWindow()
{
    QIcon zi(":zoom-in");
    QIcon zo(":zoom-out");
    QIcon op(":open");
    QIcon al(":arrow-left");
    QIcon au(":arrow-up");
    QIcon ar(":arrow-rigth");
    QIcon ad(":arrow-down");
    QIcon a(":aresta");
    QIcon v(":vertice");
    QIcon f(":face");

    fila = new CommandQueue();
    centralpanel = new RenderPanel(fila);
    setCentralWidget(centralpanel);

    tb = new QToolBar("Tool Bar", this);
    fd = new QFileDialog(this, Qt::Window);
    fd->setDirectory("../resources");
    fd->setFilter("*.ply");
    
    
    connect(tb, SIGNAL(actionTriggered( QAction * )), this, SLOT(clicou(QAction*)));
    connect(fd, SIGNAL(fileSelected(const QString &)), centralpanel, SLOT(recebeArquivo(const QString &)));
    
    
    open = tb->addAction(op,"");
    tb->addSeparator();
    zoomIn = tb->addAction(zi, "");
    zoomOut = tb->addAction(zo, "");
    tb->addSeparator();
    panU = tb->addAction(au, "");
    panL = tb->addAction(al, "");
    panR = tb->addAction(ar, "");
    panD = tb->addAction(ad, "");
    tb->addSeparator();
    vertice = tb->addAction(v,"");
    aresta = tb->addAction(a,"");
    face = tb->addAction(f, "");
    del = tb->addAction("deleta");

    addToolBar(Qt::LeftToolBarArea, tb);

    connect(centralpanel, SIGNAL(atualizaMain()), this, SLOT(update()));

    setWindowTitle("trab2FT 0.0.1");
    setFixedSize(800, 600);
}

void MainWindow::clicou(QAction* a)
{
    if(a == open)
        fd->open();
    else if(a == zoomIn)
    {
        fila->produz(INCZOOM);
    }else if (a == zoomOut)
    {
        fila->produz(DECZOOM);
    }else if (a == panU)
    {
        fila->produz(DECY);
    }else if (a == panL)
    {
        fila->produz(DECX);
    }else if (a == panD)
    {
        fila->produz(INCY);
    }else if(a == panR)
    {
        fila->produz(INCX);
    }else if(a == vertice)
    {
        fila->produz(PONTOS);
    }else if(a == aresta)
    {
        fila->produz(ARESTAS);
    }else if(a == face)
    {
        fila->produz(FACES);
    }else if(a ==del)
    {
        fila->produz(DELETA);
    }
}

void MainWindow::update(void)
{
	repaint();
}
