# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = Lab7

CONFIG += sailfishapp

SOURCES += src/Lab7.cpp

DISTFILES += qml/Lab7.qml \
    qml/cover/CoverPage.qml \
    qml/pages/Btn.qml \
    qml/pages/Clock.qml \
    qml/pages/FirstPage.qml \
    qml/pages/Light.qml \
    qml/pages/SecondPage.qml \
    qml/pages/Task1.qml \
    qml/pages/Task2.qml \
    qml/pages/Task3.qml \
    qml/pages/Task4.qml \
    qml/pages/Task5.qml \
    qml/pages/Task6.qml \
    qml/pages/Task7.qml \
    rpm/Lab7.changes.in \
    rpm/Lab7.changes.run.in \
    rpm/Lab7.spec \
    rpm/Lab7.yaml \
    translations/*.ts \
    Lab7.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/Lab7-de.ts
