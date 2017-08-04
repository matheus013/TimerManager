#include "day.h"

Day::Day(QObject *parent) : QObject(parent)
{

}

void Day::set_theme(int index, int value) {
    this->get_theme()[index] = value;
}
