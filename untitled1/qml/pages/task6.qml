import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0

Page {
    id: page
    PageHeader {
        title: qsTr("Notes")
    }

    Dao { id: dao }

    TextField {
        y: 150
        id: txtfield
        width: parent.width * 2 / 3
        anchors.horizontalCenter: parent.horizontalCenter
        placeholderText: "Enter the text.."
    }

    Button {
        id: createButton
        text: "Add a note"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: txtfield.bottom
        onClicked: {
            dao.insertNote("Admin", txtfield.text)
            selectNotes();
        }
    }

    SilicaListView {
        //anchors.fill: parent
        anchors.top: createButton.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        model: ListModel { id: booksListModel }
        delegate: ListItem {
            onClicked: { deleteNote(index); }
            Label { text: title }
        }
    }

    function selectNotes() {
        booksListModel.clear();
        dao.retrieveNotes(function(books) {
            for(var i = 0; i < books.length; i++) {
                var book = books.item(i);
                booksListModel.append({id:book.id,author: book.author, title: book.title});
            }
        dao.getLength();
        });
    }

    function deleteNote(index) {
        booksListModel.clear();
        dao.retrieveNotes(function(books) {
            var book = books.item(index);
            dao.deleteBook(book.id);
            selectNotes();
        });
    }

    Component.onCompleted: selectNotes()
}
