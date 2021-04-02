import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
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
                text: "Назад"
                onClicked: pageStack.pop(Qt.resolvedUrl(pageStack.currentPage))
            }
            Button{
                text: "Вперед"
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }
            Label{
                text: "Глубина стека: " + pageStack.depth
            }
        }
    }
}
