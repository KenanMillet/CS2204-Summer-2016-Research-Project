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
#include "qobject.h"
#include <QThread>


MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent), CU(new ControlUnit),
    ui(new Ui::MainWindow), thephysics(new physics), stop(false)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void delay(int timedelay)
{

    QTime dieTime= QTime::currentTime().addMSecs(timedelay);
    while (QTime::currentTime() < dieTime)
        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
}


void MainWindow::SetupScene(){
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
    CU->thepaddle1->setPos(135, 5);
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


    Driver* driver1 = new Keyboarddriver(CU->interface, 1, Qt::Key_I, Qt::Key_K, Qt::Key_J, Qt::Key_L);
//    Driver* driver2 = new Keyboarddriver(CU->interface, 2, Qt::Key_W, Qt::Key_S, Qt::Key_A, Qt::Key_D);
//    Driver* driver3 = new Keyboarddriver(CU->interface, 3, Qt::Key_Up, Qt::Key_Down, Qt::Key_Left, Qt::Key_Right);
    QThread serialthread;
    USBdriver* usb = new USBdriver(CU->interface, 4, CU, &serialthread);
    Driver* driver4 = usb;


    CU->interface->p1driver = driver1;
    CU->interface->p2driver = driver4;


    usb->moveToThread(&serialthread);
    serialthread.start();






//    CU->interface->p1driver = driver3;

    CU->interface->P1sel = SEL_IPC;
    CU->interface->P2sel = SEL_IPC;

    ui->scene->setScene(CU->scene);

//    this->installEventFilter(driver1);
//    this->installEventFilter(driver2);

    db = new DriverBank;
    db->addDriver(driver1);
//    db->addDriver(driver2);

//    db->addDriver(driver3);

    this->installEventFilter(db);

    qDebug() << "scene has been set up";

    QSize m(CU->scene->sceneRect().size().width() + 3, CU->scene->sceneRect().size().height() +3);
    ui->scene->setMinimumSize(m);


    resize(m);
    qDebug() << "about to register ticks into the vector";

    //CU->theball, paddle1, paddle2 has to be registered into registertick vector;
//    CU->thetick->registertick(CU->theball, &(ball::tick));
//    CU->thetick->registertick(CU->thepaddle1, &(paddle::tick));
//    CU->thetick->registertick(CU->thepaddle2, &(paddle::tick));

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





