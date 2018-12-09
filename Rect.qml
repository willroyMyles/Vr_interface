import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.2
Rectangle {
    Layout.fillHeight: true
    Layout.fillWidth: true
    color: "#222"


    Rectangle{
        id: textView
        clip: true
        anchors{
            bottom: parent.bottom
            left: parent.left
            right: parent.right
        }
        color: "#555"
        implicitHeight: 50


        Label{

            color: "#eee"
            text: "title of scene being view"
            wrapMode: Label.WordWrap
            font.pixelSize: Qt.application.font.pixelSize * 1.4
            anchors{
                bottom: parent.bottom
                left: parent.left
                right: parent.right
                centerIn: parent
            }

        }
    }

}
