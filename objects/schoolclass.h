#ifndef SCHOOLCLASS_H
#define SCHOOLCLASS_H

#include "../assets/cpp/qqmlobjectlistmodel.h"
#include <QObject>

class SchoolClass : public QObject {
    Q_OBJECT
    QML_OBJMODEL_PROPERTY(QString, name)
    QML_OBJMODEL_PROPERTY(int, id)
    QML_OBJMODEL_PROPERTY(QString, describe)
    QML_OBJMODEL_PROPERTY(Turn, turnSchool)
public:
    explicit SchoolClass(QObject *parent = nullptr);
    enum Turn{
        MORNING = 1,
        AFTERNOON= 2,
        NIGHT = 3

    };

};

#endif // SCHOOLCLASS_H
