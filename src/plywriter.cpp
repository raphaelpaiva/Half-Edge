#include "Interface.h"
#include "HalfEdge.h"

#include <QFile>
#include <QTextStream>
#include <QIODevice>
#include <QList>
#include <QVector>
#include <QFileDialog>
#include <QtGui>

#include "plywriter.h"

void setSaveToFileName(QString paramSaveToFileName) {
    saveToFileName = paramSaveToFileName;
}

void writePly(Interface& interface) {

    QFile file(saveToFileName);
    file.open(QIODevice::WriteOnly | QIODevice::Text);
    QTextStream out(&file);

    QVector<Face *> faces = interface.getFaces();

    out << "ply" << "\n";
    out << "format ascii 1.0" << "\n";

    int vertex_count = interface.getVertices().size();
    int faces_count = faces.size();

    out << "element vertex " << vertex_count << "\n";
    out << "property float x" << "\n";
    out << "property float y" << "\n";

    out << "element face " << faces_count << "\n";
    out << "property list uchar int vertex_index" << "\n";

    out << "end_header" << "\n";

    QList<Vertex*> points = interface.getVertices().values();
    for (int i = 0; i < points.size(); i++) {
        QPointF p = points[i]->getPoint();
        qDebug() << "adicionando ponto: (" << p.x() << "," << p.y() << ")\n";
        //out << i << " ";
        out << p.x() << " " << p.y() << "\n";
    }

    for (int i = 0; i < faces.size(); i++) {
        HalfEdge* start = faces.at(i)->getOuterComp();
        HalfEdge* aux = start;

        //out << i << " ";

        qDebug() << "### Face: " << i << "\n";

        int vertex_per_face_counter = 0;
        QString tempStr;
        do {            
            QTextStream tempStream(&tempStr);

            Vertex* vertex = aux->getOrigem();
            int index = points.indexOf(vertex);

            tempStream << index << " ";
            aux = aux->getProx();

            vertex_per_face_counter++;
        } while (aux != start);

        out << vertex_per_face_counter << " " << tempStr << "\n";
    }

}
