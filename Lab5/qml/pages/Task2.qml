import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable{
        anchors.fill: parent

        PullDownMenu {
                    MenuItem {
                        text: qsTr("Show Task 3")
                        onClicked: pageStack.push(Qt.resolvedUrl("Task3.qml"))
                    }
                }

        ListModel{
            id: dataModel
            property int count: 0
        }
        Column{
            width: page.width
            anchors.fill: parent
            spacing: Theme.paddingMedium
            anchors.margins: Theme.paddingMedium

            Button{
                id: addButton
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Add Item"
                onClicked: {dataModel.append({name: "Item #" + dataModel.count})
                dataModel.count++}
            }

            SilicaListView{
                spacing: 10
                width: parent.width
                height: parent.height - addButton.height
                header: PageHeader{title: "Второе задание"}
                model: dataModel
                delegate: Rectangle{
                    width: parent.width
                    height: 70
                    color: "skyblue"
                    Text{
                        anchors.centerIn: parent
                        text: model.name
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            dataModel.remove(index, 1)
                        }
                    }
                }
            }
        }
    }
}
