import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 5")
                onClicked: pageStack.push(Qt.resolvedUrl("Page5.qml"))
            }
        }

        contentHeight: column.height
        ComponentStopWatch{
            anchors.centerIn: parent
        }
    }
}
