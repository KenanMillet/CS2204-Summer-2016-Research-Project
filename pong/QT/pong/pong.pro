#-------------------------------------------------
#
# Project created by QtCreator 2016-07-20T16:23:22
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = pong
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    game.cpp \
    ball.cpp \
    paddle.cpp \
    player.cpp \
    tick.cpp \
    physics.cpp \
    controlunit.cpp \
    extinterface.cpp \
    driver.cpp \
    datahub.cpp \
    keyboarddriver.cpp \
    driverbank.cpp

HEADERS  += mainwindow.h \
    game.h \
    ball.h \
    paddle.h \
    player.h \
    tick.h \
    physics.h \
    controlunit.h \
    extinterface.h \
    driver.h \
    datahub.h \
    tickable.h \
    keyboarddriver.h \
    driverbank.h

FORMS    += mainwindow.ui

RESOURCES += \
    images.qrc
