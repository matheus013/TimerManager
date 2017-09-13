#include "connection.h"
#include <QDebug>

QSqlDatabase Connection::getDataConnection() const{
    return dataConnection;
}

Connection::Connection(QString dataBaseName, QString userName,
                       QString password, QString hostName, QString database){
    dataConnection = QSqlDatabase::addDatabase(database);
    dataConnection.setDatabaseName(dataBaseName);
    dataConnection.setHostName(hostName);
    dataConnection.setPassword(password);
    dataConnection.setUserName(userName);

}

Connection::Connection(QString path, QString database) {
    dataConnection = QSqlDatabase::addDatabase(database);//not dbConnection
    dataConnection.setDatabaseName(path);
}

bool Connection::startConnection(){
    return dataConnection.open();
}
