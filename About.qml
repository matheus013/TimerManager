import QtQuick 2.0

Item {
    width: wpercent(parent, 100)
    height: hpercent(parent, 30)
    Row{
        Item{
            width: wpercent(parent, 50)
            height: hpercent(parent, 100)
            Description{
                width: wpercent(parent, 100)
                height: hpercent(parent, 50)
                title: "Sobre"
                main_text: "oi_io"
            }
        }
        Item{
            width: wpercent(parent, 50)
            height: hpercent(parent, 100)
            Description{
                width: wpercent(parent, 100)
                height: hpercent(parent, 50)
                title: "Sobre"
                main_text: "oi_io"
            }
        }
    }
}
