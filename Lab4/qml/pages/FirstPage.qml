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

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Lab 4")
            }

            // Task 1
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 1")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Enter the number:")
            }

            TextField {
                id: numberTextField;
                width: parent.width;
                inputMethodHints: Qt.ImhFormattedNumbersOnly;
                label: "Number"
                placeholderText: label
            }

            // Task 2, 3
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 2, 3")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Button {
                id: pressedButton
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Button"
                down: false
                onClicked: {
                    down = true
                    pressedLabel.text = "Pressed"
                }
            }

            Label {
                id: pressedLabel
                text: "Unpressed"
                anchors.horizontalCenter: parent.horizontalCenter;
            }

            // Task 4
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 4")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            ValueButton {
                id: counterButton
                anchors.horizontalCenter: parent.horizontalCenter;
                property int count : 0
                value: count
                description: "Tap to increase"
                onClicked: {
                    count++;
                }
            }

            // Task 5
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 5")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            DatePicker {
                date: new Date();
                daysVisible: true
                monthYearVisible: true
                onDateTextChanged: {
                    console.log(dateText);
                }
            }

            // Task 6
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 6")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            TimePicker {
                anchors.horizontalCenter: parent.horizontalCenter;
                hour: 0
                minute: 0
                onTimeTextChanged: {
                    console.log(timeText);
                }
            }

            // Task 7
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 7")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            ComboBox {
                label: "List"
                description: "List's description"
                menu: ContextMenu {
                    id: menu
                    MenuItem { text: "Item 0" }
                    MenuItem { text: "Item 1" }
                    MenuItem { text: "Item 2" }
                }
                onCurrentIndexChanged: { console.log("Current menu item: " + menu.children[currentIndex].text) }
            }

            // Task 8
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 8")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Switch {
                anchors.horizontalCenter: parent.horizontalCenter;
                id: switchItem
            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter;
                x: Theme.horizontalPageMargin
                text: qsTr(switchItem.checked ? "On" : "Off")
            }

            // Task 9
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 9")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Slider {
//                anchors.horizontalCenter: parent.horizontalCenter;
                width: parent.width
                minimumValue: 0
                maximumValue: 1
                stepSize: 0.01
                value: 0.5
                label: "Current value: " + value
            }

            Rectangle {
                color: "transparent"
                width: 50
                height: 500
            }
        }
    }
}
