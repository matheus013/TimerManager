import QtQuick 2.4
import QtQuick.Controls 2.2
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
            text: "Início"
            action.onClicked: {
                stack.push(aboutComponent)
                drawer.close()
            }
        }
        BComponents.Button {
            text: "Cadastro"
            anchors.horizontalCenter: parent.horizontalCenter
            width: wpercent(parent,80)
            height: hpercent(parent, 10)
            action.onClicked: {
                stack.push(registerComponent)
                drawer.close()
            }
        }
        BComponents.Button {
            text: "Painel"
            anchors.horizontalCenter: parent.horizontalCenter
            width: wpercent(parent, 80)
            height: hpercent(parent, 10)
            action.onClicked: {
                stack.push(painelComponent)
                drawer.close()
            }
            Component.onCompleted: {
                console.log(width)
                console.log(height)
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
            text: "minha conta"
            anchors.horizontalCenter: parent.horizontalCenter
            width: wpercent(parent, 80)
            height: hpercent(parent, 10)
            action.onClicked: {
                test.color = "blue"
            }
        }
    }
    Component{
        id: aboutComponent
        About {}
    }
    Component{
        id: registerComponent
        Register {}
    }
    Component{
        id: painelComponent
        Painel {}
    }
}

