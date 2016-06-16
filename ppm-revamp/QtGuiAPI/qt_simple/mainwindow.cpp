#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "workerthread.h"
#include <QLabel>
#include <QDebug>
#include <QStringList>





/*******************************************************************
 ************************* PUBLIC FUNCTIONS ************************
 *******************************************************************/

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    // Built-in function to setup the GUI
    ui->setupUi(this);

    // No WorkerThread object to connect to at instantiation of MainWindow
    this->t = NULL;
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::setWorkerThread(WorkerThread* thread)
{
    this->t = thread;
    connect(this->t, SIGNAL(serialCommDone(QString)), this, SLOT(newDataRead(QString)));
}




// LOOK INTO PLACING DISPLAYS INTO A VECTOR AND DOING ITERATIVE UPDATES
void MainWindow::updateGUI(QString& data)
{
   ui->disp0->setText(data);

}



/*******************************************************************\
 ******************************* SLOTS *****************************\
 *******************************************************************/

void MainWindow::newDataRead(QString data)
{


    updateGUI(data);
}



void MainWindow::on_Send_clicked()
{
    QString writedata;
    writedata = ui->Input->toPlainText();
    this->t->endTurnP1((writedata));
}
