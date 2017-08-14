import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    property string title: ""
    property string main_text: ""
    anchors.fill: parent
    Column{
        width: wpercent(parent, 90)
        height: hpercent(parent, 80)
        anchors.centerIn: parent
        spacing: hpercent(parent, 1.5)
        Item{
            width: wpercent(parent, 80)
            height: hpercent(parent, 10)
            Row{
                anchors.fill: parent
                spacing: wpercent(parent, 2)
                Rectangle{
                    color: "black"
                    height: hpercent(parent.height, 0.5)
                    width: (parent.width - titleContent.paintedWidth)*0.95
                }
                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    id: titleContent
                    text: qsTr("Title")
                    elide: Text.ElideNone
                }
                Rectangle{
                    color: "black"
                    height: hpercent(parent.height, 0.5)
                    width: (parent.width - titleContent.paintedWidth)*0.95
                }
            }
        }
        Item{
            width: wpercent(parent, 80)
            height: hpercent(parent, 60)
            Text {
                id: textContent
                width: parent.width
                horizontalAlignment: Text.AlignJustify
                Layout.fillWidth: true
                text: qsTr("aajk lsjdka skjdg aksjlgd jklasg djklgaskljdg aksjgd jkagsldkj gaskljdg aklsjg dkjlags kjldgaksjl gdjklag sdjklg askjldgkajl gsdkljg askjldg aksjlgdk ajlsdk jlgasdkjlgaskjl gdjkasg kjdgaskj gdkjlasg dkjlgaskjl gdkjasg kjldga skjdg jkgaajk lsjdka skjdg aksjlgd jklasg djklgaskljdg aksjgd jkagsldkj gaskljdg aklsjg dkjlags kjldgaksjl gdjklag sdjklg askjldgkajl gsdkljg askjldg aksjlgdk ajlsdk jlgasdkjlgaskjl gdjkasg kjdgaskj gdkjlasg dkjlgaskjl gdkjasg kjldga skjdg jkgaajk lsjdka skjdg aksjlgd jklasg djklgaskljdg aksjgd jkagsldkj gaskljdg aklsjg dkjlags kjldgaksjl gdjklag sdjklg askjldgkajl gsdkljg askjldg aksjlgdk ajlsdk jlgasdkjlgaskjl gdjkasg kjdgaskj gdkjlasg dkjlgaskjl gdkjasg kjldga skjdg jkg")
                elide: Text.ElideMiddle
            }
        }
    }
}
