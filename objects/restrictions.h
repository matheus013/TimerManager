#ifndef RESTRICTIONS_H
#define RESTRICTIONS_H

#include "../assets/cpp/qqmlobjectlistmodel.h"
#include <QObject>

class Restrictions : public QObject {
    Q_OBJECT
    QML_OBJMODEL_PROPERTY(int, idTheme)
    QML_OBJMODEL_PROPERTY(int, time)
    QML_OBJMODEL_PROPERTY(int, day)
    QML_OBJMODEL_PROPERTY(QString, cpf)
public:
    explicit Restrictions(QObject *parent = nullptr);
};

#endif // RESTRICTIONS_H
