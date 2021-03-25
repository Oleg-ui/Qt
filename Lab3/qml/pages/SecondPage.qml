import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    SilicaListView {
        anchors.fill: parent
        header: PageHeader {
            title: qsTr("Lab3")
        }
        contentHeight: column.height

        Column{
            x: Theme.horizontalPageMargin
            y: 20
            Item{
                height: TimePicker.height
                width: parent.width
                TimePicker{
                    id: timePicker
                    onTimeChanged: console.log(timeText)
                }
                Label{
                    anchors.centerIn: timePicker
                    text: timePicker.timeText
                    font.pixelSize: Theme.fontSizeExtraLarge
                }
            }
        }

        ComboBox{
            y: 550
            label: "Выпадающий список"
            menu: ContextMenu{
                MenuItem{text: "Первый"}
                MenuItem{text: "Второй"}
                MenuItem{text: "Третий"}
            }
            onCurrentIndexChanged: console.log(currentItem)
        }

        Column{
            y: 650
            Switch{
                id: sw
            }
            Label{
                x: Theme.horizontalPageMargin
                text: sw.checked ? "Включен" : "Выключен"
            }

        }

        Slider{
            y: 900
            width: parent.width
            value: 0
            maximumValue: 100
            minimumValue: 0
            stepSize: 1
            label: "Текущее значение: " + value
        }
    }
}
