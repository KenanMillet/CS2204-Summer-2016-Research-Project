#-------------------------------------------------
#
# Project created by QtCreator 2016-06-16T16:22:52
#
#-------------------------------------------------

QT       += core gui serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = gomoku
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    tile.cpp \
    dialog.cpp \
    machineplayer.cpp \
    wincheck.cpp \
    playcheck.cpp \
    iomodule.cpp \
    controlunit.cpp \
    player.cpp \
    humanplayer.cpp \
    delay.cpp \
    verilogplayer.cpp

HEADERS  += mainwindow.h \
    tile.h \
    dialog.h \
    machineplayer.h \
    wincheck.h \
    playcheck.h \
    iomodule.h \
    controlunit.h \
    player.h \
    humanplayer.h \
    delay.h \
    verilogplayer.h

FORMS    += mainwindow.ui \
    dialog.ui

RESOURCES += \
    Images.qrc

DISTFILES +=
