#ifndef LISTOFSTRINGS_H
#define LISTOFSTRINGS_H


#include <QObject>
#include <QMetaObject>
#include <QDebug>
#include <QString>
#include <QList>


#include <QObject>
#include <QString>
#include <QStringList>


class ListOfStrings : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString list READ getText NOTIFY listChanged)
private:
    QStringList list;
public:
    ListOfStrings() : QObject() {
        list = QStringList();
    }
    Q_INVOKABLE void push(QString str) {
        list.append(str.toLower());
        emit listChanged();
    }

    Q_INVOKABLE void pop() {
        list.removeLast();
        emit listChanged();
    }

    QString getText() {
        QString text = list.join(", ");
           return text.replace(0, 1, text[0].toUpper());
    }
signals:
    void listChanged();
};

#endif // LISTOFSTRINGS_H
