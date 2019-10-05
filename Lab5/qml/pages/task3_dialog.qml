import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    property alias fieldText : field.text
    Column {
        width: parent.width
        spacing: Theme.paddingMedium
        DialogHeader {}
        TextField {
            id: field
            text: "Text"
            width: parent.width
        }
    }
}
