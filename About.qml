import QtQuick 2.0

Item {
    Column{
        anchors.fill: parent
        Item{
            width: wpercent(parent, 100)
            height: hpercent(parent, 15)
            Text {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: hpercent(parent, 40)
                text: qsTr("Gerenciador de Horários")
                color: "#7986CB"
            }
        }
        Item{
            width: wpercent(parent, 100)
            height: hpercent(parent, 30)
            Description{
                anchors.horizontalCenter: parent.horizontalCenter
                width: wpercent(parent, 100)
                height: hpercent(parent, 50)
                title: "Qual problema?"
                main_text: "Como estudante vimos uma oportunidade de aplicar conhecimento adquiridos durante o curso na\ncriação"+
                           " do quadro de horários frequentemente repetitivo, onde todos os semestre temos as mesma\ndificuldades. "+
                           "A dificuldade em alocar horários das aulas da melhor forma, sempre tentando atender\na disponibilidade de"+
                           " cada professor."
            }
        }
        Item{
            width: wpercent(parent, 100)
            height: hpercent(parent, 30)
            Description{
                anchors.horizontalCenter: parent.horizontalCenter
                width: wpercent(parent, 100)
                height: hpercent(parent, 50)
                title: "Solução"
                main_text: "Aplicar conhecimentos adquiridos durante o curso, para implementar uma aplicação com objetivo\nde auxiliar a"+
                           " criação dp quadro horário, evitando verificações massivas que se repetem a todo semestre."
            }
        }
    }
}
