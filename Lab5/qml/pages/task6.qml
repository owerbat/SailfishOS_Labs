import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

//    Column {
//        id: column

//        width: page.width
//        spacing: Theme.paddingLarge
//        PageHeader {
//            title: qsTr("Task 6")
//        }

//        SilicaFlickable {
//            anchors.fill: parent

            SilicaListView {
                model: ListModel {
                    id: tasksModel
                    ListElement { name: "task 1"; date: "01.01.2020"; }
                    ListElement { name: "task 2"; date: "02.01.2020"; }
                    ListElement { name: "task 3"; date: "02.01.2020"; }
                    ListElement { name: "task 4"; date: "03.01.2020"; }
                    ListElement { name: "task 5"; date: "03.01.2020"; }
                }

                anchors.fill: parent
                header: PageHeader { title: "Tasks for January"; }
                section {
                    property: 'date'
                    delegate: SectionHeader { text: section }
                }
                delegate: Item {
                    width: ListView.view.width
                    height: Theme.itemSizeSmall
                    Label { text: name }
                }
            }
//        }
//    }
}
