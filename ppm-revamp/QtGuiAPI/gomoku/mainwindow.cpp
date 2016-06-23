#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "dialog.h"
#include "ui_dialog.h"
#include "tile.h"
#include "qDebug"
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

}

MainWindow::~MainWindow()
{
    delete ui;
}

int MainWindow::counttoleft(Tile& t, int count, int piece){
    int row=t.row;
    int col=t.col-1;
    if(piece == 0) piece = t.piece;
    if(col < 0) return count;
    if(this->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttoleft(*this->tile[row][col], ++count, piece);
    }
}

int MainWindow::counttoright(Tile& t, int count, int piece){
    int row=t.row;
    int col=t.col+1;
    if(piece == 0) piece = t.piece;
    if(col > 14) return count;
    if(this->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttoright(*this->tile[row][col], ++count, piece);
    }
}




int MainWindow::counttoup(Tile& t, int count, int piece){
    int row=t.row-1;
    int col=t.col;
    if(piece == 0) piece = t.piece;
    if(row < 0) return count;
    if(this->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttoup(*this->tile[row][col], ++count, piece);
    }
}




int MainWindow::counttodown(Tile& t, int count, int piece){
    int row=t.row+1;
    int col=t.col;
    if(piece == 0) piece = t.piece;
    if(row > 14) return count;
    if(this->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttodown(*this->tile[row][col], ++count, piece);
    }
}


int MainWindow::counttoupright(Tile& t, int count, int piece){

    int row=t.row-1;
    int col=t.col+1;
    if(piece == 0) piece = t.piece;
    if(col > 14 || row < 0) return count;
    if(this->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttoupright(*this->tile[row][col], ++count, piece);
    }

}



int MainWindow::counttodownleft(Tile& t, int count, int piece){
    int row=t.row+1;
    int col=t.col-1;
    if(piece == 0) piece = t.piece;
    if(row > 14 || col < 0) return count;
    if(this->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttodownleft(*this->tile[row][col], ++count, piece);
    }
}

int MainWindow::counttoupleft(Tile& t, int count, int piece){

    int row=t.row-1;
    int col=t.col-1;
    if(piece == 0) piece = t.piece;
    if(row < 0 || col < 0) return count;
    if(this->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttoupleft(*this->tile[row][col], ++count, piece);
    }

}



int MainWindow::counttodownright(Tile& t, int count, int piece){
    int row=t.row+1;
    int col=t.col+1;
    if(piece == 0) piece = t.piece;
    if(row > 14 || col > 14) return count;
    if(this->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttodownright(*this->tile[row][col], ++count, piece);
    }
}



void MainWindow::winornot(Tile& t){
    int horizcount=counttoleft(t,counttoright(t));
    int verticalcount=counttoup(t, counttodown(t));
    int uprightcount=counttoupright(t, counttodownleft(t));
    int upleftcount=counttoupleft(t, counttodownright(t));
    qDebug();

    if(horizcount>=4 || verticalcount >=4 || uprightcount>=4 || upleftcount>=4){
    Dialog* mydialog = new Dialog;
    if(t.piece==1){
        mydialog->ui->Winlabel->setText("Black Wins");
    }

    else if(t.piece==2){
        mydialog->ui->Winlabel->setText("White Wins");
    }
    mydialog->show();
    }
}


void MainWindow::dosetup(Tile& t){
    //int row=t.row;
    //int col=t.col;
    connect(&t, SIGNAL(checkifwin(Tile&)), this, SLOT(winornot(Tile&)));
}
