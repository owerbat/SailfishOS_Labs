import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    id: page

    function loadInfo() {
//        var params = 'q=' + encodeURIComponent(input) + '&target=' + encodeURIComponent(target)
//        lb.text = lb.text + params
        var xhr = new XMLHttpRequest();
//        xhr.open("GET", "http://www.cbr.eu/scripts/XML_daily.asp", true);
        xhr.open("GET", "https://www.cbr-xml-daily.ru/daily_utf8.xml", true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                xmlmodel.xml = xhr.responseText;
            }
        }
        xhr.send();
    }

    XmlListModel {
        id: xmlmodel
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

    Component.onCompleted: loadInfo()
}
