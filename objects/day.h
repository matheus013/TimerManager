#ifndef DAY_H
#define DAY_H

#include "../assets/cpp/qqmlobjectlistmodel.h"
#include "schoolclass.h"
#include <QObject>

class Day : public QObject {
    Q_OBJECT
    QML_OBJMODEL_PROPERTY(int, day)
    QML_OBJMODEL_PROPERTY(QVector<int>, theme)
    QML_OBJMODEL_PROPERTY(int, sizeTheme)
    QML_OBJMODEL_PROPERTY(SchoolClass *, schoolClass)
public:
    explicit Day(QObject *parent = nullptr);
    void set_theme(int index, int value);

};

#endif // DAY_H
