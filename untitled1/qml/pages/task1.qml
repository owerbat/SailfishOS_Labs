import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: dataModel
        ListElement { color: "black"; text: "black" }
        ListElement { color: "red"; text: "red" }
        ListElement { color: "white"; text: "white" }
        ListElement { color: "green"; text: "green" }
        ListElement { color: "blue"; text: "blue" }
    }

    SilicaListView {
        id: listView
        anchors.fill: parent
        header: PageHeader {
            title: qsTr("List of rectangles")
        }
        model: dataModel
        delegate: Rectangle {
            id: rec
            width: parent.width
            height: 100
            color: model.color
            Text {
                anchors.centerIn: parent
                text: model.text
                color: Qt.rgba(1-rec.color.r, 1-rec.color.b, 1-rec.color.g, rec.color.a)
            }
        }
    }
}
