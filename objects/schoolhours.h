#ifndef SCHOOLHOURS_H
#define SCHOOLHOURS_H

#include "day.h"
#include <QObject>

class SchoolHours : public QObject {
    Q_OBJECT
    QML_OBJMODEL_PROPERTY(Day, day)
    QML_OBJMODEL_PROPERTY(int, id)
    QML_OBJMODEL_PROPERTY(int, num)
public:
    explicit SchoolHours(QObject *parent = nullptr);

};

#endif // SCHOOLHOURS_H
