import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        anchors.fill: parent
        model: 10
        delegate: ListItem {
            id: delegate
            Label {
                x: Theme.paddingLarge
                text: "list item " + index
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            menu: ContextMenu {
                MenuLabel { text: "Context menu" }
                MenuItem {
                    text: "menu item 1"
                    onClicked: console.log("menu item 1 is clicked")
                }
                MenuItem {
                    text: "menu item 2"
                    onClicked: console.log("menu item 2 is clicked")
                }
            }
        }
    }
}
