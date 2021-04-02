import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        Component{
                    id: dialog
                    DatePickerDialog{
                        Column{
                            width: parent.width
                            spacing: 10
                            DialogHeader{}
                        }
                        onAccepted: firstTextField.text = dateText
                    }
                }

        Column {
            id: column

            width: page.width
            anchors.fill: parent
            spacing: Theme.paddingMedium
            anchors.margins: Theme.paddingMedium



            TextField{
                id: firstTextField
                width: parent.width
            }

            Button{
                text: "Открыть дату"
                onClicked: pageStack.push(dialog)
            }
        }
    }
}
