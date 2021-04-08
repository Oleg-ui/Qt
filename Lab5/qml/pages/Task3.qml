import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    property var dataModel: [
        {color: "white", name: "white"},
        {color: "blue", name: "blue"},
        {color: "red",   name: "red"}
    ]

    SilicaFlickable{
        anchors.fill: parent

        PullDownMenu {
                    MenuItem {
                        text: qsTr("Show Task 4")
                        onClicked: pageStack.push(Qt.resolvedUrl("Task4.qml"))
                    }
                }

        Column{
            width: page.width
            anchors.fill: parent
            spacing: Theme.paddingMedium
            anchors.margins: Theme.paddingMedium

            SilicaListView{
                spacing: 10
                width: parent.width
                height: parent.height
                header: PageHeader{title: "Третье задание"}
                model: dataModel
                delegate: Rectangle{
                    width: parent.width
                    height: 70
                    color: modelData.color
                    Text{
                        anchors.centerIn: parent
                        text: modelData.name
                    }
                }
            }
        }
    }
}
