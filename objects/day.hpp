#ifndef DAY_H
#define DAY_H

#include "QQmlHelpers"
#include "schoolclass.hpp"
#include <QObject>

class Day : public QObject {
    Q_OBJECT
    QML_WRITABLE_PROPERTY(int, day)
    QML_OBJMODEL_PROPERTY(int, theme)
    QML_WRITABLE_PROPERTY(int, sizeTheme)
    QML_WRITABLE_PROPERTY(SchoolClass *, schoolClass)
public:
    explicit Day(QObject *parent = nullptr);
    void set_theme(int index, int value);

};

#endif // DAY_H
