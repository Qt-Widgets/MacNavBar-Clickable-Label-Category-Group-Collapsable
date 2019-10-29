#-------------------------------------------------
#
# Project created by QtCreator 2019-10-29T20:44:24
#
#-------------------------------------------------

QT       += widgets

TARGET = MacNavBar
TEMPLATE = lib

# For creating only .a or .lib file, i.e. static library
#CONFIG += staticlib

# For creating both .a or .lib and .dll files, i.e. shared library
win32 {
        CONFIG += shared dll release
        DEFINES += QFUI_MAKEDLL
}

DESTDIR = $$PWD/lib
DLLDESTDIR = $$PWD/../bin

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

DEPENDPATH += . include src
INCLUDEPATH += . include

SOURCES += \
    src/clickablelabel.cpp \
    src/navbar.cpp \
    src/navbargroup.cpp \
    src/navbaritem.cpp \
    src/selectablewidget.cpp

HEADERS += \
    include/qf_clickablelabel.h \
    include/qf_navbar.h \
    include/qf_navbargroup.h \
    include/qf_navbaritem.h \
    include/qf_selectablewidget.h \
    include/qf_uiexport.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
