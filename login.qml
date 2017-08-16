import QtQuick 2.5
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0
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

    Column{
        height: hpercent(parent, 80)
        width: wpercent(parent, 100)
        spacing: hpercent(parent, 2)
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Text {
            id: signin
            text: qsTr("Sign In")
            font.pointSize: 24
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
        }
        Image {
            id: user
            width: hpercent(parent,20)
            height: wpercent(parent,20)
            anchors.horizontalCenter: parent.horizontalCenter
            source:"/imgs/group.png"
            fillMode: Image.PreserveAspectFit

        }

        TextField
        {
            id: id
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: qsTr("Username")
        }
        TextField
        {
            id: senha
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: qsTr("Password")
            echoMode: TextInput.Password
        }

        BComponents.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            width: id.width
            height: id.height
            color: "#fbb03b"
            radius: 5.0
            text: "Login"
        }
    }

}
