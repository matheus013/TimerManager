import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

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
        width: hpercent(root, 30)
    }
//    Rectangle{
//        color: "black"
//        anchors.fill: parent
//        StackView{

//        }

//    }
    Label {
            id: content

            text: "Aa"
            font.pixelSize: 96
            anchors.fill: parent
            verticalAlignment: Label.AlignVCenter
            horizontalAlignment: Label.AlignHCenter

            transform: Translate {
                x: drawer.position * content.width * 0.33
            }
        }

}
