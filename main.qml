import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import "qrc:/components" as BComponents


Window {
    function hpercent(ref,percent) { return (ref.height/100)*percent; }
    function wpercent(ref,percent) { return (ref.width/100)*percent; }
    id: root
    visible: true
    width: 800
    height: 600
    title: qsTr("Timer Manager")

    Drawer{
        id: drawer
        height: hpercent(root, 100)
        width: wpercent(root, 30)
        Item {
            height: hpercent(drawer, 80)
            width: wpercent(drawer, 80)
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            Column{
                height: hpercent(parent, 80)
                width: wpercent(parent, 100)
                spacing: wpercent(parent,2)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                BComponents.Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: wpercent(parent,80)
                    height: hpercent(parent, 10)
                    action.onClicked: {
                        test.color = "blue"
                    }
                }
                BComponents.Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: wpercent(parent,80)
                    height: hpercent(parent, 10)
                    action.onClicked: {
                        test.color = "red"
                    }
                }
                BComponents.Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: wpercent(parent,80)
                    height: hpercent(parent, 10)
                    action.onClicked: {
                        test.color = "green"
                    }
                }
                BComponents.Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: wpercent(parent,80)
                    height: hpercent(parent, 10)
                    action.onClicked: {
                        test.color = "black"
                    }
                }
                BComponents.Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: wpercent(parent,80)
                    height: hpercent(parent, 10)
                    action.onClicked: {
                        test.color = "blue"
                    }
                }

            }
        }
    }


    Label {
        id: content
        anchors.fill: parent
        verticalAlignment: Label.AlignVCenter
        horizontalAlignment: Label.AlignHCenter

                transform: Translate {
                    x: drawer.position * content.width * 0.30
                }
        BComponents.ImageButton{
            id: button_menu
            color: "black"
            source: "/imgs/menu.png"
            action.onClicked: {
                drawer.open()
            }
        }
        Rectangle {
            id: test
            anchors.fill: parent
            z: -100
        }
    }

}
