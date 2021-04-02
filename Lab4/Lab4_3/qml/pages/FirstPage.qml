import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        Component{
                    id: dialog
                    Dialog{
                        Column{
                            width: parent.width
                            spacing: 10
                            DialogHeader{}
                            TextField{
                                id: field1
                                width: parent.width
                            }
                        }
                        onAccepted: firstTextField.text = field1.text
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
                text: "Открыть диалог"
                onClicked: pageStack.push(dialog)
            }
        }
    }
}
