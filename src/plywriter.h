#ifndef PLYWRITE_H
#define PLYWRITE_H

static QString saveToFileName;

void setSaveToFileName(QString paramSaveToFileName);

void writePly(Interface& interface);

#endif // PLYWRITE_H
