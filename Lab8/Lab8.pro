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
TARGET = Lab8

CONFIG += sailfishapp

SOURCES += src/Lab8.cpp \
    src/counter.cpp \
    src/listofstrings.cpp

DISTFILES += qml/Lab8.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/Page1.qml \
    qml/pages/Page2.qml \
    qml/pages/SecondPage.qml \
    rpm/Lab8.changes.in \
    rpm/Lab8.changes.run.in \
    rpm/Lab8.spec \
    rpm/Lab8.yaml \
    translations/*.ts \
    Lab8.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/Lab8-de.ts

HEADERS += \
    src/counter.h \
    src/listofstrings.h
