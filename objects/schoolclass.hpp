#ifndef SCHOOLCLASS_H
#define SCHOOLCLASS_H

#include "QQmlHelpers"
#include <QObject>

class SchoolClass : public QObject {
public:
    enum Turn{
        MORNING = 1,
        AFTERNOON= 2,
        NIGHT = 3

    };
private:
    Q_OBJECT
    QML_WRITABLE_PROPERTY(QString, name)
    QML_WRITABLE_PROPERTY(int, id)
    QML_WRITABLE_PROPERTY(QString, describe)
    QML_WRITABLE_PROPERTY(Turn *, turnSchool)
public:
    explicit SchoolClass(QObject *parent = nullptr);


};

#endif // SCHOOLCLASS_H
