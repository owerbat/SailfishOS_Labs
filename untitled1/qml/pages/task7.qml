import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    id: page
    ConfigurationValue {
        id: setting
        key: "/apps/app_name/setting_name";
        defaultValue: "default"
    }
    ConfigurationValue {
        id: flag
        key: "/apps/app_name/flag1";
        defaultValue: false
    }
    Column {
        anchors.fill: parent
        spacing: 30
        PageHeader { title: "Settings" }
        Label {
            width: parent.width
            text: "Flags's value: " + flag.value
        }
        Button {
            width: parent.width
            text: "Change flag"
            onClicked: flag.value = !flag.value
        }
        Label {
            width: parent.width
            text: "Setting's value: " + setting.value
        }
        TextField {
            width: parent.width
            id: txtfield
            placeholderText: "Enter setting's value"
        }
        Button {
            width: parent.width
            text: "Save setting"
            onClicked: setting.value = txtfield.text
        }
    }
}
