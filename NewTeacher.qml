import QtQuick 2.5
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.1
import "qrc:/components" as BComponents

Item {
    property int width_drawer: 25
    Column {
        height: hpercent(parent, 80)
        width: wpercent(parent, 100)
        anchors.horizontalCenter: parent.horizontalCenter
        Item{
            height: hpercent(parent, 18.75)
            width: wpercent(parent, 100)
            Text{
                text: qsTr("Cadastro")
                height: hpercent(parent,50); width: wpercent(parent,70)
                anchors.centerIn: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: wpercent(parent, 7.5)
                color: "#7986CB"
            }
        }
        Item{
            height: hpercent(parent, 18.75)
            width: wpercent(parent, 100)
            TextField{
                placeholderText: qsTr("Nome")
                height: hpercent(parent.parent,10); width: wpercent(parent.parent,45)
                anchors.centerIn: parent
            }
        }
        Item{
            height: hpercent(parent, 18.75)
            width: wpercent(parent, 100)
            TextField{
                placeholderText: qsTr("Telefone")
                height: hpercent(parent.parent,10); width: wpercent(parent.parent,45)
                anchors.centerIn: parent
                validator : RegExpValidator { regExp : /[0-9]+\.[0-9]+/ }
            }
        }
        Item{
            height: hpercent(parent, 18.75)
            width: wpercent(parent, 100)
            TextField{
                placeholderText: qsTr("Horas")
                height: hpercent(parent.parent,10); width: wpercent(parent.parent,45)
                anchors.centerIn: parent
                validator : RegExpValidator { regExp : /[0-9]+\.[0-9]+/ }
            }
        }
    }

    Item{
        anchors.bottom: parent.bottom
        width: wpercent(parent,100)
        height: hpercent(parent,25)
        Row{
            anchors.fill: parent
            Item{
                width: wpercent(parent,50)
                height: hpercent(parent,100)
                TeacherModel{}
                BComponents.Button {
                    anchors.centerIn: parent
                    width: wpercent(parent, 25)
                    height: hpercent(parent, 30)
                    color: "#fbb03b"
                    text: "Confirmar"
                    action.onClicked: {
                        modelsTeacher.append
                                ({
                                     "name": "Bill Smith",
                                     "number": "555 3264",
                                     "worktime": "40",
                                     "updateRestrictions": "false"
                                 })
                    }
                }
            }
            Item{
                width: wpercent(parent,50)
                height: hpercent(parent,100)

                BComponents.Button {
                    anchors.centerIn: parent
                    width: wpercent(parent, 25)
                    height: hpercent(parent, 30)
                    color: "#fbb03b"
                    text: "Cancelar"
                    action.onClicked: {
                        stack.pop()
                    }
                }
            }
        }
    }
}
