import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Task 1")
                onClicked: pageStack.push(Qt.resolvedUrl("Task1.qml"))
            }
            MenuItem {
                text: qsTr("Task 2")
                onClicked: pageStack.push(Qt.resolvedUrl("Task2.qml"))
            }
            MenuItem {
                text: qsTr("Task 3")
                onClicked: pageStack.push(Qt.resolvedUrl("Task3.qml"))
            }
            MenuItem {
                text: qsTr("Task 4")
                onClicked: pageStack.push(Qt.resolvedUrl("Task4.qml"))
            }
            MenuItem {
                text: qsTr("Task 5")
                onClicked: pageStack.push(Qt.resolvedUrl("Task5.qml"))
            }
            MenuItem {
                text: qsTr("Task 6")
                onClicked: pageStack.push(Qt.resolvedUrl("Task6.qml"))
            }
            MenuItem {
                text: qsTr("Task 7")
                onClicked: pageStack.push(Qt.resolvedUrl("Task7.qml"))
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
                x: Theme.horizontalPageMargin
                text: qsTr("Hello Sailors")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
        }
    }
}
