#ifndef CODE_H
#define CODE_H

#include "../assets/cpp/qqmlobjectlistmodel.h"
#include <QObject>

class Code : public QObject {
    Q_OBJECT
    QML_OBJMODEL_PROPERTY(QString, code)
    QML_OBJMODEL_PROPERTY(QString, email)
    QML_OBJMODEL_PROPERTY(int, level)
public:
    explicit Code(QObject *parent = nullptr);

};

#endif // CODE_H
