import QtQuick 2.5
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.1
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

    LinearGradient {
        anchors.fill: parent
        start: Qt.point(0, 0)
        end: Qt.point(root.width, root.height)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#39427b" }
            GradientStop { position: 1.0; color: "#9a64c4" }
        }
    }

    GridLayout{
        rows: 3
        columns: 2
        height: hpercent(parent, 100)
        width: wpercent(parent, 100)
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter


        BComponents.TextLine {
            id: passwordField
            anchors.horizontalCenter: parent.horizontalCenter

        }
        BComponents.TextLine {
//            id: passwordField
            anchors.horizontalCenter: parent.horizontalCenter

        }
        BComponents.TextLine {
//            id: passwordField
            anchors.horizontalCenter: parent.horizontalCenter

        }

        BComponents.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            width: id.height
            height: id.height
            color: "#fbb03b"
            radius: id.height
            text: "+"
        }



    }

}
