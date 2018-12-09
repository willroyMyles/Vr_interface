import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.2

Pane {
    id: pane
    Layout.fillWidth: true
    implicitHeight: 70
    padding: 0

    background: Rectangle {
        color: "#000"
        border.color: "#00333333"
        border.width: 1
    }

    RowLayout {
        id: rowLayout
        anchors.fill: parent


        Rectangle {
            id: rectangle
            implicitHeight: parent.height
            implicitWidth: parent.height * 2
            color: "#555"
            border.width: 1
            border.color: "#2f000000"
            anchors{
//                top: pane.top
//                bottom: pane.bottom
//                left: pane.left

                topMargin: -pane.padding
                leftMargin: -pane.padding
                bottomMargin: -pane.padding
            }


        }

        Item {
            implicitWidth: 5
        }

        ColumnLayout{


            Label {
                id: title
                text: qsTr("Downloadable view")
                //font.bold: true
                font.weight: Font.Medium
                font.pixelSize: Qt.application.font.pixelSize * 1.4
                color: "#fff"
            }

            Label {
                id: description
                text: qsTr("Downloadable description view")
                color: "#ccc"
            }

        }


        Item {
            Layout.fillWidth: true
        }

        CustomButton {
            icon: "images/icons8-cancel-filled-500.png"
            color: "#00555555"
        }

        Item {
            implicitWidth: 5
        }
    }



}
