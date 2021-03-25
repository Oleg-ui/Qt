import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Lab3")
            }

            TextField{
                x: Theme.horizontalPageMargin
                y: 10
                label: "Поле"
                placeholderText: "Подсказка"
                placeholderColor: Theme.highlightColor
                color: Theme.highlightColor
                width: 625
            }

            Button{
                x: Theme.horizontalPageMargin
                y: 30
                color: "yellow"
                highlightColor: "red"
                highlightBackgroundColor: "green"
                text: "Кнопка"
                onClicked: down = !down;
            }

            Button{
                id: button
                x: Theme.horizontalPageMargin
                y: 50
                text: "Кнопка"
                highlightBackgroundColor: "blue"
                Label{
                    id: label
                    y: 90
                    transform: Translate{x:65}
                    text: button.down == true ? "Нажата" : "Отпущена"
                }
            }

            ValueButton{
                x: Theme.horizontalPageMargin
                y: y + 50
                label: "Счетчик:"
                description: "Считает количество нажатий"
                value: "0"
                onClicked: value = parseInt(value) + 1;
                width: 625
            }

            DatePicker{
                height: 600
                width: 600
                x: Theme.horizontalPageMargin
                y: 300
                daysVisible: true
                weeksVisible: true
                onDateTextChanged: console.log(dateText)
            }
        }
    }
}
