#ifndef TEACHER_H
#define TEACHER_H

#include "../assets/cpp/qqmlobjectlistmodel.h"
#include <QObject>

class Teacher : public QObject {
    Q_OBJECT
    QML_OBJMODEL_PROPERTY(QString, name)
    QML_OBJMODEL_PROPERTY(QString, email)
    QML_OBJMODEL_PROPERTY(QString, cpf)
    QML_OBJMODEL_PROPERTY(QVector<int>, restrictions)
    QML_OBJMODEL_PROPERTY(int, idTheme)
public:
    explicit Teacher(QObject *parent = nullptr);


};

#endif // TEACHER_H
