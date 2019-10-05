import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaWebView {
        id: webView
        anchors {
            top: parent.top
            bottom: urlField.top
            left: parent.left
            right: parent.right
        }
        url: "https://www.google.ru/"
    }
        TextField {
            id: urlField
            anchors {
                bottom: parent.bottom
                left: parent.left
                right: goButton.left
            }
            text: "https://www.google.ru/"
            label: webView.title
            EnterKey.onClicked: webView.url = text
        }
//        Button {
//            id: goButton
//            text: "Go"
//            onClicked: webView.url = text
//            anchors {
//                top: urlField.top
//                bottom: parent.bottom
//                right: parent.right
//            }
//            width: parent.width / 4
//        }
}
