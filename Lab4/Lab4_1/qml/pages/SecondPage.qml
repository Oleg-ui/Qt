import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaListView {
        id: listView
        anchors.fill: parent

        Column {
            id: column

            width: page.width
            anchors.fill: parent
            spacing: Theme.paddingMedium
            anchors.margins: Theme.paddingMedium
            PageHeader {
                title: "Cтраница"
            }
            Button{
                text: "Убрать страницу"
                onClicked: pageStack.navigateBack()
            }
        }
    }
}
