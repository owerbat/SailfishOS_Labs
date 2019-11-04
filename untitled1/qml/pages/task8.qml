import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    id: page
    ConfigurationGroup {
        id: settings;
        path: "/apps/app_name/setting";
        property bool flag: false;
        property string text: "default"
    }
    Column {
        anchors.fill: parent
        spacing: 30
        PageHeader { title: "Settings" }
        Label {
            width: parent.width
            text: "flag: " + settings.flag
        }
        Button {
            width: parent.width
            text: "Change flag"
            onClicked: {
                settings.flag = !(settings.flag)
            }
        }
        Label {
            width: parent.width
            text: "text: " + settings.text
        }
        TextField {
            width: parent.width
            id: txtfield
            placeholderText: "Enter some text"
        }
        Button {
            width: parent.width
            text: "Save text"
            onClicked: settings.text = txtfield.text
        }
    }
}
