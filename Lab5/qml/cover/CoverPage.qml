import QtQuick 2.0
import Sailfish.Silica 1.0

Cover {
    property int count: 0
    Label {
        id: label
        text: "Counter: " + count
        anchors.centerIn: parent
    }
    CoverActionList {
        CoverAction {
            iconSource: "image://theme/icon-cover-cancel"
            onTriggered: count--;
        }
        CoverAction {
            iconSource: "image://theme/icon-cover-new"
            onTriggered: count++;
        }
    }
}
