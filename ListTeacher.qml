import QtQuick 2.0

ListView {
    width: 180; height: 200

    model: TeacherModel {}
    delegate: Text {
        text: name + ": " + number
    }
}
