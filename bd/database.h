#pragma once

#include <QObject>

class DatabaseManagement : public QObject {
    Q_OBJECT
public:
    DatabaseManagement();
    void createTable(QObject *object);
    void createDB();
    void dropTable();
};
