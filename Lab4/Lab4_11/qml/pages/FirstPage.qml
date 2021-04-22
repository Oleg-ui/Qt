import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    Column{
        id: column
        width: parent.width
        height: parent.height
        anchors.fill: parent
        spacing: Theme.paddingMedium
        anchors.margins: Theme.paddingMedium

        TextField{
            id: textfield1

        }
        Button{
            id: addButton
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить"
            onClicked: coverIn = textfield1.text
        }
    }

}
