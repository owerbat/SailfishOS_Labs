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
            text: "Attach new page"
            onClicked: pageStack.pushAttached(Qt.resolvedUrl("task2_2.qml"))
        }
        Button {
            text: "Go to new page"
            onClicked: pageStack.navigateForward(1)
        }
        Button {
            text: "Back"
            onClicked: pageStack.pop()
        }
    }
}
