import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable{
        anchors.fill: parent

        PullDownMenu {
                    MenuItem {
                        text: qsTr("Show Task 2")
                        onClicked: pageStack.push(Qt.resolvedUrl("Task2.qml"))
                    }
                }

        ListModel{id: dataModel}
        Column{
            width: page.width
            anchors.fill: parent
            spacing: Theme.paddingMedium
            anchors.margins: Theme.paddingMedium

            SilicaListView{
                width: parent.width
                height: parent.height - addButton.height - field1.height - field2.height - 50
                header: PageHeader{title: "Первое задание"}
                model: dataModel
                delegate: Rectangle{
                    width: parent.width
                    height: 70
                    color: model.color
                    Text{
                        anchors.centerIn: parent
                        text: model.name
                    }
                }
            }
            TextField{
                id: field1
                width: parent.width
                placeholderText: "Цвет прямоугольника"
            }
            TextField{
                id: field2
                width: parent.width
                placeholderText: "Текст прямоугольника"
            }
            Button{
                id: addButton
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Добавить прямоугольник"
                onClicked: dataModel.append({color:field1.text, name: field2.text})
            }
        }

    }
}
