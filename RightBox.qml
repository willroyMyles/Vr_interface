import QtQuick 2.0
import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.2

Pane {
    Layout.fillHeight: true
    padding: 10
    implicitWidth: app.width * .2

    clip: true

    background: Rectangle {
        color: "#111"
    }

    ColumnLayout {
        anchors.fill: parent

        Rectangle {
            id: accountInfo
            Layout.fillWidth: true
            implicitHeight: parent.height * .2
            color : "#00000000"
            RowLayout {
                Layout.fillWidth: true
                spacing: 5
                Rectangle {
                    id: image
                    implicitHeight: parent.height * 2
                    implicitWidth: height
                    Layout.fillWidth: true
                    color: "#234"
                }

                Item {
                    implicitWidth: 5
                }

                ColumnLayout {
                    Layout.fillWidth: true
                    Label {
                        id:lab
                        text: "Jhon Doe"
                        font.weight: Font.Medium
                        font.pixelSize: Qt.application.font.pixelSize * 1.7
                        color : "#fff"
                    }
                    Pane {
                           padding: 0
                           implicitHeight: lab.height + padding
                           implicitWidth: lab.width + padding
                        Label{
                            text: "log out"
                            font.pixelSize: Qt.application.font.pixelSize * 1
                            color: "white"
                            padding: 7
                            background: Rectangle{
                                border.color: "#888"
                                border.width: 1
                                color: "#00000000"
                            }
                        }

                        background: Rectangle{
                            border.color: "#fff"
                            border.width: 0
                            color: "#00000000"
                        }
                    }
                }
            }
        }

        Item {
            implicitHeight: 15
        }

        DownloadableScene {
        }
        DownloadableScene {
        }
        DownloadableScene {
        }
        DownloadableScene {
        }

        Item {
          //  Layout.fillHeight: true
        }
    }
}
