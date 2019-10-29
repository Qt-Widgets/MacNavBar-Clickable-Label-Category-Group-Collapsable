#-------------------------------------------------
#
# Project created by QtCreator 2019-10-29T15:50:38
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = MacNavBar_Example
TEMPLATE = app

DESTDIR = $$PWD/../bin

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        widget.cpp

HEADERS += \
        widget.h

FORMS += \
        widget.ui

RESOURCES += \
    resources.qrc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target




win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../src/lib/ -lMacNavBar
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../src/lib/ -lMacNavBard
else:unix: LIBS += -L$$PWD/../src/lib/ -lMacNavBar

INCLUDEPATH += $$PWD/../src/include
DEPENDPATH += $$PWD/../src/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../src/lib/libMacNavBar.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../src/lib/libMacNavBard.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../src/lib/MacNavBar.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../src/lib/MacNavBard.lib
else:unix: PRE_TARGETDEPS += $$PWD/../src/lib/libMacNavBar.a
