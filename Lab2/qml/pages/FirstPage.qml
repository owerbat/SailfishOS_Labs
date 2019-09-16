import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            property int recSize: 200

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("User API")
            }

            // Tasks 2, 3
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Tasks 2, 3")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Rectangle {
                id: rec1Red
                width: column.recSize
                height: column.recSize
                color: "red"
                x: column.recSize /2
                Rectangle {
                    id: rec2Green
                    width: column.recSize
                    height: column.recSize
                    color: "green"
                    x: column.recSize
                    y: column.recSize / 2
                    Rectangle {
                        id: rec2Blue
                        width: column.recSize
                        height: column.recSize
                        color: "blue"
                        x: column.recSize / 2
                        y: - column.recSize / 2
                        Label {
                            text: qsTr("Square")
                            color: "white"
                        }
                    }
                }
            }

            Rectangle { width: column.recSize; height: column.recSize/2; color: "transparent" }

            // Tasks 4, 5
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Tasks 4, 5")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Row {
                spacing: Theme.paddingLarge
                x: Theme.paddingLarge

                Rectangle { width: column.recSize; height: column.recSize; color: "red" }
                Rectangle { width: column.recSize; height: column.recSize; color: "green" }
                Rectangle { width: column.recSize; height: column.recSize; color: "blue" }
            }

            Row {
                spacing: Theme.paddingLarge
                x: Theme.paddingLarge

                Rectangle { width: column.recSize; height: column.recSize; color: "magenta" }
                Rectangle { width: column.recSize; height: column.recSize; color: "transparent" }
                Rectangle { width: column.recSize; height: column.recSize; color: "black" }
            }

            Grid {
                spacing: Theme.paddingLarge
                x: Theme.paddingLarge
                columns: 3
                rows: 2

                Rectangle { width: column.recSize; height: column.recSize; color: "red" }
                Rectangle { width: column.recSize; height: column.recSize; color: "green" }
                Rectangle { width: column.recSize; height: column.recSize; color: "blue" }
                Rectangle { width: column.recSize; height: column.recSize; color: "magenta" }
                Rectangle { width: column.recSize; height: column.recSize; color: "transparent" }
                Rectangle { width: column.recSize; height: column.recSize; color: "black" }
            }
        }
    }
}
