import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.2

Pane {

    padding: 0
    implicitHeight: app.height * .15
    implicitWidth: app.width * .58

    background: Rectangle{
        color: "#111"
    }

    RowLayout{
        anchors.fill: parent
        spacing: 0

        ClickableButton{
            imageString:  "images/icons8-library-filled-100.png"
            val : "Library"
            backgroundColor: "#006def"
        }

        ClickableButton{
            imageString:  "images/icons8-cloud-filled-100.png"
            val : "Cloud"
        }
        ClickableButton{
            imageString:  "images/icons8-exterior-filled-100.png"
            val : "Home"
        }
        ClickableButton{
            imageString:  "images/icons8-available-updates-filled-100.png"
            val : "Updates"
        }
        ClickableButton{
            imageString:  "images/icons8-automatic-filled-100.png"
            val : "Settings"
            rightBorderVal: false
        }
    }
}
