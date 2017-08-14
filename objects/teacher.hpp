#ifndef TEACHER_H
#define TEACHER_H

#include "QQmlHelpers"
#include <QObject>

class Teacher : public QObject {
    Q_OBJECT
    QML_WRITABLE_PROPERTY(QString, name)
    QML_WRITABLE_PROPERTY(QString, email)
    QML_WRITABLE_PROPERTY(QString, cpf)
    QML_OBJMODEL_PROPERTY(int, restrictions)
    QML_WRITABLE_PROPERTY(int, idTheme)
public:
    explicit Teacher(QObject *parent = nullptr);


};

#endif // TEACHER_H
