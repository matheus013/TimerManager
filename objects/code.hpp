#ifndef CODE_H
#define CODE_H

#include "QQmlHelpers"
#include <QObject>

class Code : public QObject {
    Q_OBJECT
    QML_WRITABLE_PROPERTY(QString, code)
    QML_WRITABLE_PROPERTY(QString, email)
    QML_WRITABLE_PROPERTY(int, level)
public:
    explicit Code(QObject *parent = nullptr);

};

#endif // CODE_H
