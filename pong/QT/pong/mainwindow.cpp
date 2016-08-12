#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "qanimationgroup.h"
#include <QPropertyAnimation>
#include <QApplication>
#include "qdebug.h"
#include "physics.h"
#include <QCoreApplication>
#include "QTime"
#include "qpixmap.h"
#include "keyboarddriver.h"
#include "driverbank.h"
#include "usbdriver.h"
#include "usbasyncdriver.h"
#include "qobject.h"
#include <QThread>


MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent), CU(new ControlUnit),
    ui(new Ui::MainWindow), thephysics(new physics), stop(false), db(nullptr), KeyboardDriverIKJL(nullptr), KeyboardDriverWSAD(nullptr), P1score(0), P2score(0),
usb(nullptr)
{
    thephysics->m = this;
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::SetupScene(){
    ui->Keyboard_vs_bot->setGeometry(1100, 50, 150, 20);
    ui->Keyboard_vs_keyboard->setGeometry(1100, 100, 150, 20);
    ui->Keyboard_vs_USB->setGeometry(1100, 150, 150, 20);
    ui->bot_ve_bot->setGeometry(1100, 200, 150, 20);
    ui->P1scoreboard->setGeometry(1100, 550, 150, 50);
    ui->P2scoreboard->setGeometry(1100, 650, 150, 50);


    qDebug() << "setup scene function being called.";
    CU->scene = new QGraphicsScene(this);
    qDebug() << "scene was created";
    CU->scene->setSceneRect(0, 0, 1024, 700);
    CU->theball = new ball(0, 0, 15, 15);
    CU->theball->setBrush(QBrush(QColor(87, 6, 140)));
    CU->thepaddle1 = new paddle(0, 0, 100, 20);
    CU->thepaddle1->setBrush(QBrush(Qt::blue));
    CU->thepaddle2 = new paddle(0, 0, 100, 20);
    CU->thepaddle2->setBrush(QBrush(Qt::green));
    CU->thepaddle1->setPos(135, 0);
    CU->thepaddle2->setPos(135, 680);
    CU->theball->setPos(150, 150);

    thephysics->CU = CU;
    thephysics->theball = CU->theball;
    thephysics->thepaddle1 = CU->thepaddle1;
    thephysics->thepaddle2 = CU->thepaddle2;
    thephysics->scene = CU->scene;

    CU->scene->addItem(CU->theball);
    CU->scene->addItem(CU->thepaddle1);
    CU->scene->addItem(CU->thepaddle2);
    qDebug() << "scene and items have been created";
    ui->scene->setScene(CU->scene);




    keyboard_vs_bot();

    qDebug() << "scene has been set up";

    QSize m(CU->scene->sceneRect().size().width() + 3, CU->scene->sceneRect().size().height() +3);
    ui->scene->setMinimumSize(m);


    resize(m);
    qDebug() << "about to register ticks into the vector";


    CU->thetick->registertick(dynamic_cast<Tickable*>(CU->theball));
    CU->thetick->registertick(dynamic_cast<Tickable*>(CU->thepaddle1));
    CU->thetick->registertick(dynamic_cast<Tickable*>(CU->thepaddle2));

    qDebug() << "Control Unit is about to start";
}

//remember to set the p1, p2 drivers;
//remember to set external P1sel, p2sel
//remember to set the CU for externalinterface


void MainWindow::closeEvent( QCloseEvent *){

    stop = true;
}




void MainWindow::keyboard_vs_bot(){
    if(db == nullptr)
    {
        db = new DriverBank;
        this->installEventFilter(db);
    }

    if(KeyboardDriverIKJL == nullptr){
    KeyboardDriverIKJL = new Keyboarddriver(CU->interface, 1, Qt::Key_I, Qt::Key_K, Qt::Key_J, Qt::Key_L, db);
    }


    CU->interface->p1driver = KeyboardDriverIKJL;
    CU->interface->p2driver = nullptr;


    CU->interface->P1sel = SEL_IPC;
//    CU->interface->P1sel = SEL_BPC; //Wanted to test bot vs bot

    CU->interface->P2sel = SEL_BPC;


//    db = new DriverBank;
//    db->clearbank();
//    db->addDriver(KeyboardDriverIKJL);

}

void MainWindow::keyboard_vs_USB(){
    if(db == nullptr)
    {
        db = new DriverBank;
        this->installEventFilter(db);
    }

    if(KeyboardDriverIKJL == nullptr){
    KeyboardDriverIKJL = new Keyboarddriver(CU->interface, 1, Qt::Key_I, Qt::Key_K, Qt::Key_J, Qt::Key_L, db);
    }

    if(usba == nullptr) usba = new USBasyncDriver(CU->interface, 2, CU, &serialthread);

//    if(usb == nullptr){
//    usb = new USBdriver(CU->interface, 2, CU, &serialthread);

//    usb->moveToThread(&serialthread);
//    serialthread.start();
//    }

    Driver* driver4 = usba;
//    Driver* driver4 = usb;

    CU->interface->p1driver = KeyboardDriverIKJL;
    CU->interface->p2driver = driver4;

//    CU->interface->P1sel = SEL_IPC;
    CU->interface->P1sel = SEL_BPC; //Wanted to test bot vs usb bot

    CU->interface->P2sel = SEL_IPC;


//    db = new DriverBank;
//    db->addDriver(KeyboardDriverIKJL);


}

void MainWindow::keyboard_vs_keyboard(){
    if(db == nullptr)
    {
        db = new DriverBank;
        this->installEventFilter(db);
    }

    if(KeyboardDriverIKJL == nullptr){
    KeyboardDriverIKJL = new Keyboarddriver(CU->interface, 1, Qt::Key_I, Qt::Key_K, Qt::Key_J, Qt::Key_L, db);
    }

    if(KeyboardDriverWSAD == nullptr){
    KeyboardDriverWSAD = new Keyboarddriver(CU->interface, 2, Qt::Key_W, Qt::Key_S, Qt::Key_A, Qt::Key_D, db);
    }



    CU->interface->p1driver = KeyboardDriverIKJL;
    CU->interface->p2driver = KeyboardDriverWSAD;


    CU->interface->P1sel = SEL_IPC;
    CU->interface->P2sel = SEL_IPC;


//    delete db;
//    db = new DriverBank();

//    db->addDriver(KeyboardDriverIKJL);
//    db->addDriver(KeyboardDriverWSAD);
}




void MainWindow::bot_vs_bot(){
    CU->interface->P1sel = SEL_BPC;
    CU->interface->P2sel = SEL_BPC;
}


void MainWindow::on_Keyboard_vs_bot_toggled(bool checked)
{
    if(checked==true){
        keyboard_vs_bot();
    }
}



void MainWindow::on_Keyboard_vs_keyboard_toggled(bool checked)
{
    if(checked==true){
        keyboard_vs_keyboard();
    }
}

void MainWindow::on_Keyboard_vs_USB_toggled(bool checked)
{
    if(checked==true){
        keyboard_vs_USB();
    }
}

void MainWindow::on_bot_ve_bot_toggled(bool checked)
{
    if(checked==true){
        bot_vs_bot();
    }
}





void MainWindow::addscoreP1(){
    ++P1score;
    ui->P1scoreboard->display(P1score);
}



void MainWindow::addscoreP2(){
    ++P2score;
    ui->P2scoreboard->display(P2score);
}
