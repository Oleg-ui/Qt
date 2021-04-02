import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaWebView{
        id:webViev
        anchors{
            top:parent.top;
            bottom:urlField.top;
            left:parent.left;
            right:parent.right;
        }
        url:"https://ru.wikipedia.org"
    }
    TextField{
        id:urlField
        anchors{
            left:parent.left;
            bottom:parent.bottom;
            right:parent.right;
        }
        text:"https://ru.wikipedia.org"
        label: webView.title
        EnterKey.onClicked: webView.url = text
    }
}
