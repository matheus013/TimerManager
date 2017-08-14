#include "day.hpp"
#include <QVariant>

Day::Day(QObject *parent) : QObject(parent)
{

}

void Day::set_theme(int index, int value) {
//    m_theme->re
    qDebug() << index << value;
}
