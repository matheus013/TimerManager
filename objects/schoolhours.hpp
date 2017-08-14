#ifndef SCHOOLHOURS_H
#define SCHOOLHOURS_H

#include "QQmlHelpers"
#include "day.hpp"
#include <QObject>

class SchoolHours : public QObject {
    Q_OBJECT
    QML_WRITABLE_PROPERTY(Day *, day)
    QML_WRITABLE_PROPERTY(int, id)
    QML_WRITABLE_PROPERTY(int, num)
public:
    explicit SchoolHours(QObject *parent = nullptr);

};

#endif // SCHOOLHOURS_H
