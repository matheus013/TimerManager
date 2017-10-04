import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    property alias title: titleContent.text
    property alias main_text: textContent.text
    Column{
        width: wpercent(parent, 90)
        height: hpercent(parent, 100)
        anchors.centerIn: parent
        spacing: hpercent(parent, 10)
        Item{
            width: wpercent(parent, 80)
            height: hpercent(parent, 10)
            Row{
                anchors.fill: parent
                spacing: wpercent(parent, 3)
                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    text: "#"
                    font.italic: true
                    color: "#B39DDB"
                    font.pixelSize: textContent.font.pixelSize*1.2

                }
                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    id: titleContent
                    elide: Text.ElideNone
                    color: "#7986CB"
                    font.pixelSize: textContent.font.pixelSize*1.2
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
                elide: Text.ElideMiddle
                color: "#EDE7F6"
                font.pixelSize: wpercent(parent.parent.parent, 2)
            }
        }
    }
    Component.onCompleted: {
        console.log(title)
        console.log(main_text)
        console.log(height)
        console.log(width)
    }
}
