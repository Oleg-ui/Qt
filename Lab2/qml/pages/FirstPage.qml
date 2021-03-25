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
                title: qsTr("Lab#2")
            }
        }

        Item{
            x: Theme.horizontalPageMargin
            y: 50
            Rectangle{
                width: 100
                height: 100
                color: "red"
            }
            Rectangle{
                transform: Translate{y: 50; x:100}
                width: 100
                height: 100
                color: "green"
            }
            Rectangle{
                transform: Translate{x: 150}
                width: 100
                height: 100
                color: "blue"
                Text{
                    color:"white"
                    font.pointSize: 18
                    anchors.centerIn: parent
                    text: qsTr("Квадрат")
                }
            }
        }

        Row{
            x: Theme.horizontalPageMargin
            spacing:10
            y: 250
            Column{
                spacing:10
                Rectangle{
                    width: 100
                    height: 100
                    color: "red"
                }
                Rectangle{
                    width: 100
                    height: 100
                    color: "purple"
                }
            }
            Column{
                spacing:10
                Rectangle{
                    width: 100
                    height: 100
                    color: "green"
                }
            }
            Column{
                spacing:10
                Rectangle{
                    width: 100
                    height: 100
                    color: "blue"
                }
                Rectangle{
                    width: 100
                    height: 100
                    color: "black"
                }
            }
        }

        Grid{
            x: Theme.horizontalPageMargin
            y: 500
            columns: 3
            rows: 2
            spacing: 10
            Rectangle{width: 100; height: 100; color: "red"}
            Rectangle{width: 100; height: 100; color: "green"}
            Rectangle{width: 100; height: 100; color: "blue"}
            Rectangle{width: 100; height: 100; color: "purple"}
            Rectangle{width: 100; height: 100; color: "transparent"}
            Rectangle{width: 100; height: 100; color: "black"}
        }

        Item{
          y: 750
          x: Theme.horizontalPageMargin
          Rectangle{
              width: 100
              height: 100
              color: "black"
          }
          Rectangle{
              transform: [Scale{xScale: 0.5; yScale: 1}, Rotation{angle:45},  Translate{x: +200}]
              width: 100
              height: 100
              color: "black"
          }
        }
        Rectangle{
            id: redRect
            y: 250
            x: 450
            width: 10
            height: 10
            color: "red"
            ParallelAnimation{
                running: true
                loops: Animation.Infinite
                NumberAnimation{
                    target: redRect
                    property: "width"
                    from: 10
                    to: 200
                    duration: 2000
                }
                NumberAnimation{
                    target: redRect
                    property: "height"
                    from: 10
                    to: 200
                    duration: 2000
                }
                NumberAnimation{
                    target: redRect
                    property: "y"
                    from: 250
                    to: 700
                    duration: 2000
                }
            }
        }

        Component{
            id: dialog
            Dialog{
                DialogHeader{}
                Column{
                    anchors.centerIn: parent
                    spacing: 10

                    TextField{
                        id: field1
                        width: parent.width
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        placeholderText: label
                        color: Theme.highlightColor
                    }
                    TextField{
                        id: field2
                        width: parent.width
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        placeholderText: label
                        color: Theme.highlightColor
                    }
                    Button{
                        text: "Сложить"
                        onClicked: console.log(parseInt(field1.text) + parseInt(field2.text));
                    }
                }
                onAccepted: console.log(parseInt(field1.text) + parseInt(field2.text));
                onRejected: helloLabel.text = "Отменил действие"
            }
        }

        Item{
            x: Theme.horizontalPageMargin
            y: 900
            Button{
                text: "Диалог"
                onClicked: {
                    pageStack.push(dialog)
                }
            }
        }

    }
}
