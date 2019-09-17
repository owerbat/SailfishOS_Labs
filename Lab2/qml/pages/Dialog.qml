import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    Column {
        id: dialogColumn
        property int sum: 0
        width: parent.width
        spacing: Theme.paddingMedium
        DialogHeader {}
        Row {
            spacing: Theme.paddingLarge
            Label { text: "1st number" }
            Label { text: "2nd number" }
        }
        Row {
            width: parent.width
            TextField {
                id: num1
                width: parent.width/2 - 25
            }
            TextField {
                id: num2
                width: parent.width/2 - 25
            }
        }
        Label {
            id: result
            width: parent.width
            text: dialogColumn.sum
            font.pixelSize: Theme.fontSizeExtraLarge
        }
        Button {
            width: parent.width
            text: "Sum"
            onClicked: {
                dialogColumn.sum = parseInt(num1.text) + parseInt(num2.text)
            }
        }
    }
}
