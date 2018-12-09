import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id: app

    ColumnLayout {
        spacing: 0
        anchors.fill: parent

        RowLayout {
            id: row1
            Layout.fillWidth: true

            ColumnLayout {
                Layout.fillHeight: true


                Item {
                    implicitHeight: app.height * .2
                }
                LeftBox{

                }

                Item {
                    implicitHeight: app.height * .2
                }
            }

            ColumnLayout {
                spacing: 0
                Item {
                    implicitHeight: app.height * .1
                }
                MiddleBox {
                    id: middleRect

                }
                Item {
                    implicitHeight: app.height * .1
                }
            }

            ColumnLayout {
                Layout.fillHeight: true
                Item {
                    implicitHeight: app.height * .2
                }
                RightBox {

                }
                Item {
                    implicitHeight: app.height * .2
                }
            }
        }

        RowLayout {
            id: row2
            spacing: 0

            Item {
                Layout.fillWidth: true
            }

            BottomBox {

            }

            Item {
                Layout.fillWidth: true
            }
        }

        Item {
            id: space
            implicitHeight: app.height * .01
        }
    }
}
