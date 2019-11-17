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
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            property int count : 0
            width: page.width
            spacing: Theme.paddingLarge
            Item {
                Timer {
                    interval: 2500; running: true; repeat: true
                    onTriggered: column.count = column.count + 1
                }

            }
            Light {
                id: red
                anchors.horizontalCenter: parent.horizontalCenter
                state: "ON"
                states: [
                    State {
                        name: "ON"
                        PropertyChanges {
                            target: red
                            color: "red"
                        }
                        when: (column.count%3 == 0)
                    },
                    State {
                        name: "OFF"
                        PropertyChanges {
                            target: red
                            color: "black"
                        }
                        when: (column.count%3 != 0)
                    }
                ]
            }
            Light {
                id: yellow
                anchors.horizontalCenter: parent.horizontalCenter
                state: "OFF"
                states: [
                    State {
                        name: "ON"
                        PropertyChanges {
                            target: yellow
                            color: "yellow"
                        }
                        when: (column.count%3 == 1)
                    },
                    State {
                        name: "OFF"
                        PropertyChanges {
                            target: yellow
                            color: "black"
                        }
                        when: (column.count%3 != 1)
                    }
                ]
            }
            Light {
                id: green
                anchors.horizontalCenter: parent.horizontalCenter
                state: "OFF"
                states: [
                    State {
                        name: "ON"
                        PropertyChanges {
                            target: green
                            color: "green"
                        }
                        when: (column.count%3 == 2)
                    },
                    State {
                        name: "OFF"
                        PropertyChanges {
                            target: green
                            color: "black"
                        }
                        when: (column.count%3 != 2)
                    }
                ]
            }
        }
    }
}
