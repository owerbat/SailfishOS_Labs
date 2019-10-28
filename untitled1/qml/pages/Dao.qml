import QtQuick 2.0
import QtQuick.LocalStorage 2.0

Item {
    property var db;

    Component.onCompleted: {
        db = LocalStorage.openDatabaseSync("books", "1.0");
        createNotesTable();
    }

    function getLength() {
        db.transaction( function(tx) {
            var res = tx.executeSql('SELECT * FROM books;');
        });
    }

    function createNotesTable() {
        db.transaction(function(tx) {
            tx.executeSql("CREATE TABLE IF NOT EXISTS books(
              id INTEGER PRIMARY KEY AUTOINCREMENT,"
              + "author TEXT NOT NULL, title TEXT NOT NULL);");
        });
    }
    function deleteBook(id) {
        db.transaction(function(tx) {
           tx.executeSql("DELETE FROM books WHERE id = ?;", [id]);
        });
    }

    function retrieveNotes(callback) {
        db.readTransaction(function(tx) {
           var result = tx.executeSql("SELECT * FROM books;");
            callback(result.rows);
        });
    }
    function updateNote(id, author, title) {
        db.transaction(function(tx) {
            tx.executeSql("UPDATE books SET author = ?, title = ? WHERE id = ?", [author, title, id]);
        });
    }

    function insertNote(author, title) {
        db.transaction(function(tx) {
           var result = tx.executeSql("INSERT INTO books (author,title) VALUES(?,?);", [author,title]);
        });
    }
}
