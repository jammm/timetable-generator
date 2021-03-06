#-------------------------------------------------
#
# Project created by QtCreator 2014-07-25T22:12:45
#
#-------------------------------------------------

QT       += core gui sql
QT       += webkit webkitwidget
QT += network
QT += webkit network

TARGET = converter
TEMPLATE = app

INCLUDEPATH += qctemplate/src/
DEPENDPATH += qctemplate/src/

linux-g++ {
    LIBS += -lqctemplate -lsqlite3
    QMAKE_LIBDIR += qctemplate/src/
}

win32 {
    LIBS += qctemplate.lib

    CONFIG(debug, debug|release) {
        QMAKE_LIBDIR += qctemplate/src/debug
    }
    CONFIG(release, debug|release) {
        QMAKE_LIBDIR += qctemplate/src/release
    }
}



SOURCES += main.cpp\
        mainwindow.cpp \
    ../timetable.cpp \
    timetableform.cpp \
    teacherdialog.cpp

HEADERS  += mainwindow.h \
    ../timetable.h \
    timetableform.h \
    teacherdialog.h

FORMS    += mainwindow.ui \
    timetableform.ui \
    teacherdialog.ui

RESOURCES += \
    timetable_data.qrc
