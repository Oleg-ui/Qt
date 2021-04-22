import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 4")
                onClicked: pageStack.push(Qt.resolvedUrl("Page4.qml"))
            }
        }
        contentHeight: column.height

        ComponentSvetofor { }
    }
}
