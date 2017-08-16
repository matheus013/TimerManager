import QtQuick 2.4
import QtQuick.Controls 2.0
import "qrc:/components" as BComponents

Item {
    Component.onCompleted: {
        console.log("init menu")
    }
    height: hpercent(parent, 80)
    width: wpercent(parent, 80)
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    Column {
        height: hpercent(parent, 80)
        width: wpercent(parent, 100)
        spacing: hpercent(parent, 2)
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        BComponents.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            width: wpercent(parent, 80)
            height: hpercent(parent, 10)
            action.onClicked: {
                test.color = "blue"
            }
        }
        BComponents.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            width: wpercent(parent,80)
            height: hpercent(parent, 10)
            action.onClicked: {
                test.color = "red"
            }
        }
        BComponents.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            width: wpercent(parent, 80)
            height: hpercent(parent, 10)
            action.onClicked: {
                test.color = "green"
            }
        }
        BComponents.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            width: wpercent(parent, 80)
            height: hpercent(parent, 10)
            action.onClicked: {
                test.color = "black"
            }
        }
        BComponents.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            width: wpercent(parent, 80)
            height: hpercent(parent, 10)
            action.onClicked: {
                test.color = "blue"
            }
        }
    }
}

