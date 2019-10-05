import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    Column {
        id: column
        property string dialogText: ""
        property string dialogDate: ""
        property string dialogTime: ""
        width: page.width
        spacing: Theme.paddingLarge
        PageHeader {
            title: qsTr("Task 3, 4, 5")
        }
        Button {
            text: "Open the dialog"
            onClicked: {
                var dialog = pageStack.push(Qt.resolvedUrl("task3_dialog.qml"));
                dialog.accepted.connect(function() {
                    column.dialogText = dialog.fieldText;
                });
            }
        }
        Label {
            text: "Text: '" + column.dialogText + "'"
        }

        Button {
            text: "Open date dialog"
            onClicked: {
                var dialog = pageStack.push(Qt.resolvedUrl("task4_dialog.qml"));
                dialog.accepted.connect(function() {
                    column.dialogDate = dialog.dateText;
                });
            }
        }
        Label {
            text: "Date: " + column.dialogDate
        }

        Button {
            text: "Open time dialog"
            onClicked: {
                var dialog = pageStack.push(Qt.resolvedUrl("task5_dialog.qml"));
                dialog.accepted.connect(function() {
                    column.dialogTime = dialog.timeText;
                });
            }
        }
        Label {
            text: "Time: " + column.dialogTime
        }
    }
}
