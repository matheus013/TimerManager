import QtQuick 2.5
import QtQuick.Controls 1.4
import "qrc:/components" as BComponents

Item{
    id: login
    Text{
        height:hpercent(parent,20); width: wpercent(parent,100);
        font { pixelSize: hpercent(this,33); bold:true }
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text:"Login"; color:"#9E9E9E"
    }
    Column{
        id: data
        anchors.centerIn: parent
        height: hpercent(parent,50)
        width: wpercent(parent,55)
        spacing: hpercent(this,30)
        Column{
            spacing: hpercent(this,30)
            TextField{
                id: username
                height: hpercent(parent.parent,10); width: wpercent(parent.parent,45)
                placeholderText: qsTr("Username")
            }
            TextField{
                id: password
                placeholderText: qsTr("Senha")
                height: hpercent(parent.parent,10); width: wpercent(parent.parent,45)
                echoMode: TextInput.Password
            }
        }
        Row{
            spacing: wpercent(parent,10)
           BComponents.Button{
//                height: hpercent(parent,13)
//                width: wpercent(parent,25)
                color: "white"
                text: "Login"
                action.onClicked: {
                    if(_console.login(username.text,password.text)) openSession()
                    else invalidLoginPopUp()
                }
            }
            BComponents.Button{
//                height: hpercent(parent,13)
//                width: wpercent(parent,25)
                color: "white"
                text: "Register"
                action.onClicked: stackPages.push(registerComponent)
            }
        }
    }
}
