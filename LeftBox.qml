import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.2

Pane {
    id: pane
    Layout.fillHeight: true
    padding: 10
    implicitWidth: app.width * .2



    background:Rectangle {
        color : "#111"
    }

    ColumnLayout{
        anchors.fill: parent


        Rectangle{
            id: thumbnail
            Layout.fillWidth: true
            Layout.fillHeight: true
            implicitWidth: parent.width * .3
            implicitHeight: parent.height * .4
            color: "#555555"
            border.color: "#333"
            border.width: 1

            anchors{
                left: parent.left
                top: parent.top
                right: parent.right

                leftMargin:  -padding
                rightMargin: -padding
                topMargin: -padding
            }
        }


        RowLayout{
                Label {
                    id: text1
                    text: qsTr("Some information \nAuthor-name")
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignLeft
                    color : "#fff"
                    font.weight: Font.Medium
                    font.pixelSize: Qt.application.font.pixelSize * 1.8
                }

                Item {
                    Layout.fillWidth: true
                }
                Button{
                    text: "download"
                    Layout.fillWidth: true
                }
        }

        Item {
            implicitHeight: 10
        }

        Pane{

            Layout.fillWidth: true
            Layout.fillHeight: true
            implicitHeight: parent.height * .4
            padding: 0

            background: Rectangle{
                color: "#00000000"
                border.color: "#09ffffff"
                border.width: 1
            }

            TextArea {
                id: name
                text: qsTr("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse volutpat et risus eu eleifend. Proin consectetur metus sed maximus ultrices. Aenean rhoncus suscipit nulla, id pellentesque nulla sollicitudin non. Maecenas convallis nisi tortor, vitae rutrum est aliquet id. Proin non feugiat leo. Morbi placerat diam ut ante facilisis, quis sodales ante rutrum. Suspendisse at rhoncus lectus, at ullamcorper nibh. Duis at eros velit. Nunc ultricies sapien nibh, in imperdiet eros commodo a. Sed consequat ante in dignissim aliquet. ")
                color: "#fff"
                wrapMode: TextArea.Wrap
                clip: true
                width: pane.width - (pane.padding * 2)
                padding: 0
                font.pixelSize: Qt.application.font.pixelSize * 1.4

            }
        }

        Item {
            Layout.fillHeight: true
        }

    }
}

