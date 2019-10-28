import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaFlickable {
        PullDownMenu {
            MenuItem {
                text: "Menu item 1"
                onClicked: label.text = "item 1"
            }
            MenuItem {
                text: "Menu item 2"
                onClicked: label.text = "item 2"
            }
            MenuLabel {
                text: "Upper menu"
            }
        }
        PushUpMenu {
            MenuItem {
                text: "Menu item 3"
                onClicked: label.text = "item 3"
            }
            MenuItem {
                text: "Menu item 4"
                onClicked: label.text = "item 4"
            }
            MenuLabel {
                text: "Lower menu"
            }
        }
        Label {
            id: label
            anchors.centerIn: parent
            text: "Something"
        }
        anchors.fill: parent
    }
}
