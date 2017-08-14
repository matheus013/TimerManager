import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import "qrc:/components" as BComponents
import "qrc:/" as Costum


Window {
    function hpercent(ref,percent) { return (ref.height/100)*percent; }
    function wpercent(ref,percent) { return (ref.width/100)*percent; }
    property int width_drawer: 25
    id: root
    visible: true
    width: 800
    height: 600
    title: qsTr("Timer Manager")

    Drawer {
        id: drawer
        height: hpercent(root, 100)
        width: wpercent(root, width_drawer)
        ColumnOptions {

        }

    }

    Label {
        id: content
        anchors.fill: parent
        verticalAlignment: Label.AlignVCenter
        horizontalAlignment: Label.AlignHCenter
        transform: Translate {
            x: drawer.position * wpercent(content, width_drawer)
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

        StackView {
            anchors.fill: parent
            initialItem: Home{}

        }



    }

}
