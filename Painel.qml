import QtQuick 2.4
import QtQuick.Controls 2.2
import "qrc:/components" as BComponents

Item {
    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        width: wpercent(parent, 100)
        height: hpercent(parent, 30)
        Item{
            width: wpercent(parent, 30)
            height: hpercent(parent, 100)
            BComponents.Button{
                anchors.centerIn: parent
                width: wpercent(root, 16)
                height: hpercent(root, 6.4)
                text: "gerenciar professores"
            }
        }
        Item{
            width: wpercent(parent, 30)
            height: hpercent(parent, 100)
            BComponents.Button{
                anchors.centerIn: parent
                width: wpercent(root, 16)
                height: hpercent(root, 6.4)
                text: "gerenciar turmas"
            }
        }
        Item{
            width: wpercent(parent, 30)
            height: hpercent(parent, 100)
            BComponents.Button{
                anchors.centerIn: parent
                width: wpercent(root, 16)
                height: hpercent(root, 6.4)
                text: "gerenciar diciplinas"
            }
        }



    }
}
