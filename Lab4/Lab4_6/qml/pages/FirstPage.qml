import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        ListModel{
            id:task
            ListElement{name:"Почистить картошку"; date: "05.04.21"}
            ListElement{name:"Убраться"; date: "06.04.21"}
            ListElement{name:"Купить продукты"; date: "07.04.21"}
            ListElement{name:"Сделать задания"; date: "09.04.21"}
            ListElement{name:"Посмотреть телевизор"; date: "10.04.21"}
        }
        SilicaListView{
            anchors.fill: parent
            model: task
            header: PageHeader{title: "Задания на неделю"}
            section{
                property: 'date'
                delegate: SectionHeader{text: section}
            }
            delegate: Text{text: name; color: Theme.highlightColor}
        }
    }
}
