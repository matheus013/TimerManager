#pragma once

#include <QObject>
#include <QSqlDatabase>

class Connection : public QObject{
    Q_OBJECT
    QSqlDatabase dataConnection;
public:
    Connection(QString dataBaseName, QString userName,
               QString password, QString hostName = "localhost",
               QString database = "QSQLITE");
    Connection(QString path, QString database);
    bool startConnection();

    QSqlDatabase getDataConnection() const;
};
