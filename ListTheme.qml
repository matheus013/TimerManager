import QtQuick 2.0
import "qrc:/components" as BComponents
Item {
    Item {
        id: header
        width: wpercent(root, 100)
        height: hpercent(root, 8)
        Row{
            anchors.fill: parent
            Item{
                width: wpercent(parent, 25)
                height: hpercent(parent, 100)
                Text {
                    anchors.fill: parent
                    font.pixelSize: hpercent(parent, 50)
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Nome"
                    color: "#7986CB"

                }
            }
//            Item{
//                width: wpercent(parent, 25)
//                height: hpercent(parent, 100)
//                Text {
//                    anchors.fill: parent
//                    font.pixelSize: hpercent(parent, 50)
//                    horizontalAlignment: Text.AlignHCenter
//                    verticalAlignment: Text.AlignVCenter
//                    text: "Telefone"
//                    color: "#7986CB"

//                }
//            }
            Item{
                width: wpercent(parent, 25)
                height: hpercent(parent, 100)
                Text {
                    anchors.fill: parent
                    font.pixelSize: hpercent(parent, 50)
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Horas"
                    color: "#7986CB"
                }
            }
            Item{
                width: wpercent(parent, 25)
                height: hpercent(parent, 100)
                Text {
                    anchors.fill: parent
                    font.pixelSize: hpercent(parent, 50)
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Professor"
                    color: "#7986CB"
                }
            }
        }
    }

    ListView {
        id: viewTeacher
        anchors.top: header.bottom
        width: wpercent(root, 100)
        height: hpercent(root, 50)
        model: modelsTheme.item
        focus: true
        delegate: Item{
            width: wpercent(root, 100)
            height: hpercent(root, 5)
            Row{
                anchors.fill: parent
                Item{
                    width: wpercent(parent, 25)
                    height: hpercent(parent, 100)
                    Text {
                        anchors.fill: parent
                        font.pixelSize: hpercent(parent, 50)
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        text: name
                        color: "#EDE7F6"
                    }
                }
//                Item{
//                    width: wpercent(parent, 25)
//                    height: hpercent(parent, 100)
//                    Text {
//                        anchors.fill: parent
//                        font.pixelSize: hpercent(parent, 50)
//                        horizontalAlignment: Text.AlignHCenter
//                        verticalAlignment: Text.AlignVCenter
//                        text: number
//                        color: "#EDE7F6"
//                    }
//                }
                Item{
                    width: wpercent(parent, 25)
                    height: hpercent(parent, 100)
                    Text {
                        anchors.fill: parent
                        font.pixelSize: hpercent(parent, 50)
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        text: worktime
                        color: "#EDE7F6"
                    }
                }
                Item{
                    width: wpercent(parent, 25)
                    height: hpercent(parent, 100)
                    Text {
                        anchors.fill: parent
                        font.pixelSize: hpercent(parent, 50)
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        text: (updateRestrictions == "") ? "em aberto" : updateRestrictions
                        color: "#EDE7F6"
                    }
                }
            }

        }
    }
    Item{
        anchors.top: viewTeacher.bottom
        width: wpercent(parent, 100)
        height: hpercent(parent, 25)
        BComponents.Button{
            anchors.centerIn: parent
            width: wpercent(root, 16)
            height: hpercent(root, 6.4)
            text: "adicionar diciplinas"
            action.onClicked: {
                stackManager.push(newThemeComponent)
            }
        }
    }
    Component{
        id: newThemeComponent
        NewTheme{}
    }
}

