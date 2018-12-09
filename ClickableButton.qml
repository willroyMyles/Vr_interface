import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Pane {

    property string imageString: ""
    property string val: ""
    property bool rightBorderVal: true
    property string backgroundColor: ""
    Layout.fillHeight: true
    Layout.fillWidth: true




    background: Rectangle{
        border.color: "#333"
        border.width: 0
        color: backgroundColor == "" ? "#00000000" : backgroundColor
    }

    padding: 30

    MouseArea{
        anchors.fill: parent
    }

    ColumnLayout{
        anchors.fill: parent
        Image {
            id: image
            fillMode: Image.PreserveAspectFit
            source: imageString
            sourceSize.width: parent.height/2
            sourceSize.height: parent.height/2
            horizontalAlignment: Image.AlignHCenter
            Layout.fillWidth: true

            layer.enabled: true

        }
        Item {
            implicitHeight: 5
        }

        Label{
        //    anchors.centerIn: parent
            id:textVal
            text : val
            Layout.fillWidth: true
            color: "#eeeeef"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: Qt.application.font.pixelSize * 1.4
            font.weight: Font.Bold
        }

        DropShadow {
               anchors.fill: image
               horizontalOffset: 0
               verticalOffset: 0
               radius: 14.0
               samples: 17
               color: "#99000000"
               source: image
           }




    }


    Rectangle{
        id:rightBorder
        implicitWidth: 2
        implicitHeight: parent.height * .7
        color: "#333"

        visible: rightBorderVal
        anchors{
            bottom: parent.bottom
            top: parent.top
            right: parent.right
            rightMargin: -padding
        }
    }

}
