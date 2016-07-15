#include "mainwindow.h"
#include "ui_mainwindow.h"
//#include "dialog.h"
//#include "ui_dialog.h"
#include "machineplayer.h"
#include "humanplayer.h"
#include "qdebug.h"
#include "controlunit.h"
#include "verilogplayer.h"
MainWindow::MainWindow(QWidget *parent, ControlUnit* cunit) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),
    cunit(cunit)

{
    ui->setupUi(this);
    mp1 = new machineplayer(this);
    mp2 = new machineplayer(this);
    hp1 = new humanplayer(this);
    hp2 = new humanplayer(this);
    vp1 = new Verilogplayer(this);
    vp2 = new Verilogplayer(this);

    cThread = new IOModule;
    connect(cThread, SIGNAL(serialCommDone(QString)), vp1, SLOT(collectdata(QString)));
    connect(cThread, SIGNAL(serialCommDone(QString)), vp2, SLOT(collectdata(QString)));
    chessBoard(this, tile, *this, cp1, cp2);
    cThread->SetupP1(hp1);
    cThread->SetupP2(hp2);
    //ui->HumanHuman->setChecked(true);

}

MainWindow::~MainWindow()
{

    delete ui;
}




void MainWindow::SetCommThread(IOModule* theThread){
    this->cThread = theThread;

}




void MainWindow::chessBoard(QWidget *baseWidget, Tile *tile[15][15], MainWindow& w, Player* cp1, Player* cp2)
{
    int i,j,hor,ver;
    //Create 64 tiles (allocating memories to the objects of Tile class)
    ver=30;
    for(i=0;i<15;i++)
    {
        hor=30;
        for(j=0;j<15;j++)
        {
            tile[i][j] = new Tile(baseWidget);
            tile[i][j]->bosswindow = &w;
            tile[i][j]->tileColor=(i+j)%2;
            tile[i][j]->piece=0;
            tile[i][j]->row=i;
            tile[i][j]->col=j;
            tile[i][j]->tileDisplay();
            tile[i][j]->setGeometry(hor,ver,45,45);
            tile[i][j]->cp1 = cp1;
            tile[i][j]->cp2 = cp2;
            tile[i][j]->show();

            hor+=45;
        }
        ver+=45;
    }

    if(cunit != nullptr)
    {
        cunit->newgame = true;
        cunit->tilejustplayed = nullptr;
    }
    Tile::tileid++;
    qDebug() << "tile id is " << Tile::tileid;
}










void MainWindow::on_MachineHuman_toggled(bool checked)
{
    cunit->stop = true;
    qDebug() << "Machine/Human:" << ((checked) ? "on" : "off");
    cunit->toggling=true;
    cunit->io->player1->stop = true;
     cunit->io->player2->stop = true;
    if(checked == true){
    cp1 = mp1;
    cp2 = hp2;
    //chessBoard(this, tile, *this, nullptr, hp2);
    qDebug() << "    setting up players";
    cThread->SetupP1(mp1);
    cThread->SetupP2(hp2);
    on_StartOver_clicked();
    qDebug() << "    ... Done.";
    }
    else
    {
        cThread->player1->turnends = true;
        cThread->player2->turnends = true;
    }
    cunit->io->player1->stop = false;
    cunit->io->player2->stop = false;
    cunit->toggling=false;
    if(checked) qDebug() << "    Done Switching Players.";
    cunit->stop = false;
}

void MainWindow::on_HumanMachine_toggled(bool checked)
{
    cunit->stop = true;
    qDebug() << "Human/Machine:" << ((checked) ? "on" : "off");
    cunit->toggling=true;
    cunit->io->player1->stop = true;
    cunit->io->player2->stop = true;
    if(checked == true){
        cp1 = hp1;
        cp2 = mp2;
    //chessBoard(this, tile, *this, hp1, nullptr);
        qDebug() << "    setting up players";
    cThread->SetupP1(hp1);
    cThread->SetupP2(mp2);
    on_StartOver_clicked();
    qDebug() << "    ... Done.";
    }
    else
    {
        cThread->player1->turnends = true;
        cThread->player2->turnends = true;
    }
    cunit->toggling=false;
    cunit->io->player1->stop = false;
    cunit->io->player2->stop = false;
    if(checked) qDebug() << "    Done Switching Players.";
    cunit->stop = false;
}





void MainWindow::on_HumanHuman_toggled(bool checked)
{
    cunit->stop = true;
    qDebug() << "Human/Human:" << ((checked) ? "on" : "off");
    cunit->toggling=true;
    cunit->io->player1->stop = true;
    cunit->io->player2->stop = true;
    cThread->player1->turnends = false;
    cThread->player2->turnends = false;
    if(checked == true){
        cp1 = hp1;
        cp2 = hp2;
        qDebug() << "    setting up players";
    cThread->SetupP1(hp1);
    cThread->SetupP2(hp2);
    on_StartOver_clicked();
    qDebug() << "    ... Done.";
    }
    else
    {
        cThread->player1->turnends = true;
        cThread->player2->turnends = true;
    }
    cunit->toggling=false;
    cunit->io->player1->stop = false;
    cunit->io->player2->stop = false;
    if(checked) qDebug() << "    Done Switching Players.";
    cunit->stop = false;
}

void MainWindow::on_MachineMachine_toggled(bool checked)
{
    cunit->stop = true;
    qDebug() << "Machine/Machine:" << ((checked) ? "on" : "off");
    cunit->toggling=true;
    cunit->io->player1->stop = true;
    cunit->io->player2->stop = true;
    if(checked == true){
        cp1 = mp1;
        cp2 = mp2;
    //chessBoard(this, tile, *this, nullptr, nullptr);
        qDebug() << "    setting up players...";
    cThread->SetupP1(mp1);
    cThread->SetupP2(mp2);
    on_StartOver_clicked();
    qDebug() << "    ... Done.";
    }
    else
    {
        cThread->player1->turnends = true;
        cThread->player2->turnends = true;
    }
    cunit->toggling=false;
    cunit->io->player1->stop = false;
    cunit->io->player2->stop = false;
    if(checked) qDebug() << "    Done Switching Players.";
    cunit->stop = false;
}

void MainWindow::on_StartOver_clicked()
{
    for(int i=0; i<15; i++){
        for(int j=0; j<15; j++){
            delete tile[i][j];
        }
    }
    chessBoard(this, tile, *this, cunit->io->player1, cunit->io->player2);
}



void MainWindow::closeEvent( QCloseEvent *){

    cunit->stop = true;
    cThread->player1->turnends = true;
    cThread->player2->turnends = true;
}
