import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    default property var someText
    property color bgColor: "white"
    Button {
        text: someText.text
        color: bgColor
        y: 200
    }
}
