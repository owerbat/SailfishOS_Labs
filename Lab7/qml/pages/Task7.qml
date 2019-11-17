import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All


    property var added: 0
    property var removed: 0
    property var prev: 0


    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        Connections {
            target: pageStack
            onDepthChanged: {
                if (page.prev > pageStack.depth) {
                    page.removed++
                }
                else {
                    page.added++
                }
                page.prev = pageStack.depth
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("UI Template")
            }
            Label {
                text: "Added: " + added
            }
            Label {
                text: "Removed " + removed
            }

            Button {
                text: "Add"
                onClicked: pageStack.push(Qt.resolvedUrl("Task7.qml"))
            }
        }
    }
}
