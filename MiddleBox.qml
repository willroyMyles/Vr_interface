import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.2


Pane{
    Layout.fillHeight: true
    Layout.fillWidth: true

    background: Rectangle{
        color: "#111"
    }

    ColumnLayout{
        anchors.fill: parent
        id: col

        RowLayout{
            spacing: 0
            CustomButton{
                icon: "/images/icons8-arrow-left-filled-100.png"
            }


        GridLayout{
            id: grid
          //  anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            columns: 3
            rows: 3

            Component.onCompleted: {
                var comp;
                var card;
                var count = grid.rows * grid.columns;

                for(var i =0; i < count; i++){
                    comp = Qt.createComponent("Rect.qml");
                    card = comp.createObject(grid);
                }


            }

        }

        CustomButton {
            icon: "/images/icons8-arrow-right-filled-100.png"
        }
        }

        RowLayout{
            Layout.fillWidth: true


            Item{
                Layout.fillWidth: true
            }

            PageIndicator {
                id: control
                count: 5
                currentIndex: 2

                delegate: Rectangle {
                    implicitWidth: 8
                    implicitHeight: 8

                    radius: width / 2
                    color: "#fff" //"#336699"

                    opacity: index === control.currentIndex ? 0.95 : pressed ? 0.7 : 0.45

                    Behavior on opacity {
                        OpacityAnimator {
                            duration: 100
                        }
                    }
                }
            }

            Item{
                Layout.fillWidth: true
            }




        }
    }

}
