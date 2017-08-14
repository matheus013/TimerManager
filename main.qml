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
        width: wpercent(root, 30)
        Item {
            height: hpercent(drawer, 80)
            width: wpercent(drawer, 80)
            Row{
                spacing: wpercent(parent,2)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.fill: parent
                Button{

                }
                Button{

                }
                Button{

                }
                Button{

                }
            }
        }
    }
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
