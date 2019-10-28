import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    id: page

    XmlListModel {
        id: xmlmodel
        source: "http://www.cbr.ru/scripts/XML_daily.asp"
        query: "/ValCurs/Valute"
        XmlRole { name: "Name"; query: "Name/string()"; }
        XmlRole { name: "Value"; query: "Value/string()" }
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader {title: "Valute courses"}
        model: xmlmodel
        spacing: 10
        delegate: Column {
            width: parent.width
            Label { width: parent.width; text: Name }
            Label { width: parent.width; text: Value }
        }
    }
}
