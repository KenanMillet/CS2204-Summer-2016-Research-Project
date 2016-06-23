#-------------------------------------------------
#
# Project created by QtCreator 2016-06-16T16:22:52
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = gomoku
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    tile.cpp \
    dialog.cpp

HEADERS  += mainwindow.h \
    tile.h \
    dialog.h

FORMS    += mainwindow.ui \
    dialog.ui

RESOURCES += \
    Images.qrc

DISTFILES +=
