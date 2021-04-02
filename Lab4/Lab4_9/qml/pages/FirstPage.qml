import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                id: menu_down_1
                text: "menu_down_1"
                onClicked: label.text = menu_down_1.text
            }
            MenuItem {
                id: menu_down_2
                text: "menu_down_2"
                onClicked: label.text = menu_down_2.text
            }
            MenuItem {
                id: menu_down_3
                text: "menu_down_3"
                onClicked: label.text = menu_down_3.text
            }
        }

        PushUpMenu {
            MenuItem {
                id: menu_up_1
                text: "menu_up_1"
                onClicked: label.text = menu_up_1.text
            }
            MenuItem {
                id: menu_up_2
                text: "menu_up_2"
                onClicked: label.text = menu_up_2.text
            }
            MenuItem {
                id: menu_up_3
                text: "menu_up_3"
                onClicked: label.text = menu_up_3.text
            }
        }

        contentHeight: column.height

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            Label {
                id: label
                x: Theme.horizontalPageMargin
                text: ""
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
        }
    }
}
