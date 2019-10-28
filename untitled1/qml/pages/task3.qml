import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property var dataModel: [
        { color: "black", text: "black" },
        { color: "red", text: "red" },
        { color: "white", text: "white" },
        { color: "green", text: "green" },
        { color: "blue", text: "blue" }
    ]

    SilicaListView {
        id: listView
        anchors.fill: parent
        header: PageHeader {
            title: qsTr("List of rectangles (JS)")
        }
        model: dataModel
        delegate: Rectangle {
            id: rec
            width: parent.width
            height: 100
            color: modelData.color
            Text {
                anchors.centerIn: parent
                text: modelData.text
                color: Qt.rgba(1-rec.color.r, 1-rec.color.b, 1-rec.color.g, rec.color.a)
            }
        }
    }
}
