import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.2

Rectangle {
    property string icon: ""

    //Layout.fillWidth: true
    implicitHeight: 30
    implicitWidth: 30
    clip: true

    Image {
               source: icon
               fillMode: Image.PreserveAspectFit  // ensure it fits
               anchors.centerIn: parent
               anchors.bottomMargin: 5

               sourceSize.width: parent.height
               sourceSize.height: parent.height
    }

    color: "#00000000"
}
