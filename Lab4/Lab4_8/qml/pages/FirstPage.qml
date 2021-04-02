import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    ListModel{
        id: task
        ListElement{name:"Купить картошки"}
        ListElement{name:"Купить моркови"}
        ListElement{name:"Купить яблок"}
        ListElement{name:"Купить помидор"}
        ListElement{name:"Купить огурцов"}
    }

    SlideshowView{
        id: view
        anchors.centerIn: parent
        height: width
        itemHeight: width
        itemWidth: width
        model: task
        delegate: Rectangle{
            width: view.itemWidth
            height: view.itemHeight
            Text{
                anchors.centerIn: parent
                text: name
            }
        }
    }
}
