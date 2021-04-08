import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
                    MenuItem {
                        text: qsTr("Show Task 6")
                        onClicked: pageStack.push(Qt.resolvedUrl("Task6.qml"))
                    }
                }

         XmlListModel {
            id: xmlListModel
            query: "/ValCurs/Valute"
            XmlRole {
                name: "Name"
                query: "Name/string()"
            }
            XmlRole {
                name: "Value"
                query: "Value/string()"
            }
          }

          SilicaListView {
            anchors.fill: parent
            header: PageHeader {title: "XMLHttpRequest"}
            model: xmlListModel
            spacing: 20
            delegate: Column {
                x:10; width: parent.width - 20
                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    text: Name
                }
                Label {
                     width: parent.width
                     wrapMode: Text.WordWrap
                     text: Value
                }
            }
        }
        Component.onCompleted: update()
        function update() {
            var xhr = new XMLHttpRequest();
            xhr.open('GET', "http://www.cbr.ru/scripts/XML_daily.asp", true)
            xhr.onreadystatechange = function() {
                if(xhr.readyState === XMLHttpRequest.DONE){
                    xmlListModel.xml = xhr.responseText;
                }
            }
            xhr.send();
        }
    }
}
