import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    property string hr: "0"
    property string min: "0"
    property string sec: "0"
    Row {
        Label {
            text: hr
        }
        Label {
            text: ":"
        }

        Label {
            text: min
        }
        Label {
            text: ":"
        }
        Label {
            text: sec
        }
    }
}
