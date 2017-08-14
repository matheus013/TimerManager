#ifndef RESTRICTIONS_H
#define RESTRICTIONS_H

#include "QQmlHelpers"
#include <QObject>

class Restrictions : public QObject {
    Q_OBJECT
    QML_WRITABLE_PROPERTY(int, idTheme)
    QML_WRITABLE_PROPERTY(int, time)
    QML_WRITABLE_PROPERTY(int, day)
    QML_WRITABLE_PROPERTY(QString, cpf)
public:
    explicit Restrictions(QObject *parent = nullptr);
};

#endif // RESTRICTIONS_H
