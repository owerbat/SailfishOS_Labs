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
//                settings.setValue("flag", !settings.flag)
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

//    TextField {
//        width: parent.width
//        anchors.horizontalCenter: parent.horizontalCenter
//        id: txtfield
//        placeholderText: "Enter setting value"
//    }
//    Label {
//        id: lb
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.top: txtfield.bottom
//        text: ""
//    }
//    Button {
//        id: setButton
//        width: parent.width
//        text: "Set"
//        anchors.top: lb.bottom
//        anchors.horizontalCenter: parent.horizontalCenter
//        onClicked: {
//            settings.set = true
//            lb.text = txtfield.text + " ready to save"
//        }
//    }
//    Button {
//        width: parent.width
//        anchors.top: setButton.bottom
//        anchors.margins: 10
//        anchors.horizontalCenter: parent.horizontalCenter
//        text: "Save"
//        id: saveButton
//        onClicked: {
//            settings.text = txtfield.text
//            settings.setValue(settings.set, txtfield.text)
//            lb.text = "Setting " + txtfield.text + " is saved"
//        }
//    }
//    Button {
//        anchors.top: saveButton.bottom
//        anchors.horizontalCenter: parent.horizontalCenter
//        width: parent.width
//        text: "Print settings"
//        onClicked: txtfield.text = settings.text + " is was saved"
//    }
}
