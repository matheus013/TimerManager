import QtQuick 2.4
import QtQuick.Controls 2.2
import "qrc:/components" as BComponents

Item {
    Column{
        anchors.fill: parent
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            width: wpercent(parent, 100)
            height: hpercent(parent, 20)
            Item{
                width: wpercent(parent, 30)
                height: hpercent(parent, 100)
                BComponents.Button{
                    anchors.centerIn: parent
                    width: wpercent(root, 16)
                    height: hpercent(root, 6.4)
                    text: "gerenciar professores"
                    action.onClicked: {
//                        backgroundStack.color = "green"
                    }
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
                    action.onClicked: {
//                        backgroundStack.color = "red"
                    }
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
                    action.onClicked: {
//                        backgroundStack.color = "blue"
                    }
                }
            }
        }
         Item{
            id: backgroundStack
            width: wpercent(parent, 100)
            height: hpercent(parent, 70)
            StackView {
                id: stackManager
                anchors.fill: parent
                initialItem: ListTeacher{}
            }
        }
    }
}
