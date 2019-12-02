#include <sailfishapp.h>
#include "counter.h"
#include "listofstrings.h"
//#include <QtQuick>
//#include <QGuiApplication>
//#include <QQuickView>

int main(int argc, char *argv[])
{
    const QMetaObject meta = Counter::staticMetaObject;
    QObject *obj = meta.newInstance();
    QObject::connect(obj, SIGNAL(countChange()), obj, SLOT(print()));
    meta.invokeMethod(obj,"increment");
    meta.invokeMethod(obj,"increment");
    meta.invokeMethod(obj,"increment");
    meta.invokeMethod(obj,"reset");

    QGuiApplication *app = SailfishApp::application(argc, argv);
    QQuickView *view = SailfishApp::createView();
    view->setSource(SailfishApp::pathTo("qml/Lab8.qml"));
    qmlRegisterType<Counter>("custom.Counter", 1, 0, "Counter");
    qmlRegisterType<ListOfStrings>("custom.ListOfStrings", 1, 0, "ListOfStrings");
    view->show();

    return app->exec();
}
