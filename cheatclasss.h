#ifndef CHEATCLASSS_H
#define CHEATCLASSS_H

#include <QObject>

class CheatClass : public QObject
{
    Q_OBJECT
public:
    explicit CheatClass(QObject *parent = nullptr);

signals:

public slots:
};

#endif // CHEATCLASSS_H
