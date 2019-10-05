import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SlideshowView {
        id: view
        anchors.centerIn: parent
        height: width
        itemHeight: width
        itemWidth: width
        model: 5
        delegate: Rectangle {
            width: view.itemWidth
            height: view.itemHeight
            Text {
                anchors.centerIn: parent
                text: "item" + index
            }
        }
    }
}
