import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    Column {
        id: column

        width: page.width
        spacing: Theme.paddingLarge
        PageHeader {
            title: qsTr("Page " + pageStack.depth)
        }
        Button {
            text: "Push"
            onClicked: pageStack.push(Qt.resolvedUrl("task1_4.qml"))
        }
        Button {
            text: "Pop"
            onClicked: pageStack.pop()
        }
    }
}
