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

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            anchors.fill: parent
            spacing: Theme.paddingLarge
            Button {
                id: button1
                text: "Button"
                onPressed: txt.state = "fallen"
                onReleased: txt.state = ""
                x: parent.width/2 - width/2
                y: 50
            }
            Text {
                id: txt
                height: 200
                x: parent.width/2 - width/2
                anchors.verticalCenter: parent.Center
                text: "Text"
                color: "white"
                y: 200
                states: [
                    State {
                        name: "fallen"
                        PropertyChanges {
                            target: txt
                            y: 1000
                            rotation: 180
                        }
                    }

                ]
                transitions: [
                    Transition {
                        reversible: true
                        NumberAnimation {
                            targets: [txt]
                            properties: "y"
                            duration: 400
                        }
                        RotationAnimation {
                            direction: RotationAnimation.Counterclockwise
                            duration: 400
                        }

                    }
                ]
                font.pointSize: 72
            }
        }
    }
}
