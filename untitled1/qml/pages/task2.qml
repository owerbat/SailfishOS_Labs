import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int count: 0
    ListModel {
        id: dataModel
    }
    SilicaListView {
        width: parent.width
        height: parent.height - addButton.height
        header: PageHeader { title: "List" }
        model: dataModel
        delegate: Rectangle {
            width: parent.width
            height: 100
            Text {
                anchors.centerIn: parent
                text: model.text
            }
            MouseArea {
                anchors.fill: parent
                onClicked: { dataModel.remove(model.index, 1); }
            }
        }
    }
    Button {
        id: addButton
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: "Add item"
        onClicked: dataModel.append({ text: "item #" + page.count++ })
    }
}
