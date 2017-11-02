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
            Item{
                width: wpercent(parent, 25)
                height: hpercent(parent, 100)
                Text {
                    anchors.fill: parent
                    font.pixelSize: hpercent(parent, 50)
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Capacidade"
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
                    text: "Sala"
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
                    text: "Turno"
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
        model: modelsClass.item
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
                Item{
                    width: wpercent(parent, 25)
                    height: hpercent(parent, 100)
                    Text {
                        anchors.fill: parent
                        font.pixelSize: hpercent(parent, 50)
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        text: cap
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
                        text: room
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
                        text: turn
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
            text: "adicionar turma"
            action.onClicked: {
                stackManager.push(newClassComponent)
            }
        }
    }
    Component{
        id: newTeacherComponent
        NewTeacher{}
    }
    Component{
        id: newClassComponent
        NewClass{}
    }
}

