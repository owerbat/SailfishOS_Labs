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
                text: qsTr("Show Dialog")
                onClicked: pageStack.push(Qt.resolvedUrl("Dialog.qml"))
            }
        }

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

            // Task 6
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 6")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Rectangle {
                width: 2 * column.recSize
                height: 2 * column.recSize
                color: "black"
                transform: [
                    Scale { yScale: 0.5 },
                    Rotation { angle: -45 },
                    Translate { x: column.recSize; y: 1.5 * column.recSize }
                ]
            }

            // Task 7
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 7")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Rectangle {
                id: borderRec
                width: parent.width
                height: 3 * column.recSize
                color: "transparent"
                property int duration: 2000
                Rectangle {
                    id: movingRec
                    y: 0
                    width: 0
                    height: 0
                    color: "yellow"
                    SequentialAnimation {
                        loops: Animation.Infinite
                        running: true
                        ParallelAnimation {
                            PropertyAnimation {
                                target: movingRec
                                property: "y"
                                from: 0
                                to: 500
                                duration: borderRec.duration
                            }
                            PropertyAnimation {
                                target: movingRec
                                property: "width"
                                from: 0
                                to: column.recSize
                                duration: borderRec.duration
                            }
                            PropertyAnimation {
                                target: movingRec
                                property: "height"
                                from: 0
                                to: column.recSize
                                duration: borderRec.duration
                            }
                            RotationAnimation {
                                target: movingRec
                                from: 0
                                to: 360
                                duration: borderRec.duration
                            }
                        }
                        ParallelAnimation {
                            PropertyAnimation {
                                target: movingRec
                                property: "y"
                                from: 500
                                to: 0
                                duration: borderRec.duration
                            }
                            PropertyAnimation {
                                target: movingRec
                                property: "width"
                                from: column.recSize
                                to: 0
                                duration: borderRec.duration
                            }
                            PropertyAnimation {
                                target: movingRec
                                property: "height"
                                from: column.recSize
                                to: 0
                                duration: borderRec.duration
                            }
                            RotationAnimation {
                                target: movingRec
                                from: 360
                                to: 0
                                duration: borderRec.duration
                            }
                        }
                    }
                }
            }

            Rectangle {
                height: column.recSize
                width: column.recSize
                color: "transparent"
            }
        }
    }
}
