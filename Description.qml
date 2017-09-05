import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    property string title: ""
    property string main_text: ""
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
                    text: qsTr(title)
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
                text: qsTr(main_text)
                elide: Text.ElideMiddle
            }
        }
    }
}
