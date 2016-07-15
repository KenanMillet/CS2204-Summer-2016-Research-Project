#include "wincheck.h"
#include "dialog.h"
#include "ui_dialog.h"
#include "qdebug.h"
class Dialog;

int Wincheck::counttoleft(Tile& t, int count, int piece){

    int row=t.row;
    int col=t.col-1;
    if(piece == 0) piece = t.piece;
    if(col < 0) return count;
    if(w->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttoleft(*w->tile[row][col], ++count, piece);
    }
}

int Wincheck::counttoright(Tile& t, int count, int piece){
    int row=t.row;
    int col=t.col+1;
    if(piece == 0) piece = t.piece;
    if(col > 14) return count;
    if(w->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttoright(*w->tile[row][col], ++count, piece);
    }
}




int Wincheck::counttoup(Tile& t, int count, int piece){
    int row=t.row-1;
    int col=t.col;
    if(piece == 0) piece = t.piece;
    if(row < 0) return count;
    if(w->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttoup(*w->tile[row][col], ++count, piece);
    }
}




int  Wincheck::counttodown(Tile& t, int count, int piece){
    int row=t.row+1;
    int col=t.col;
    if(piece == 0) piece = t.piece;
    if(row > 14) return count;
    if(w->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttodown(*w->tile[row][col], ++count, piece);
    }
}


int  Wincheck::counttoupright(Tile& t, int count, int piece){

    int row=t.row-1;
    int col=t.col+1;
    if(piece == 0) piece = t.piece;
    if(col > 14 || row < 0) return count;
    if(w->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttoupright(*w->tile[row][col], ++count, piece);
    }

}



int  Wincheck::counttodownleft(Tile& t, int count, int piece){
    int row=t.row+1;
    int col=t.col-1;
    if(piece == 0) piece = t.piece;
    if(row > 14 || col < 0) return count;
    if(w->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttodownleft(*w->tile[row][col], ++count, piece);
    }
}

int  Wincheck::counttoupleft(Tile& t, int count, int piece){

    int row=t.row-1;
    int col=t.col-1;
    if(piece == 0) piece = t.piece;
    if(row < 0 || col < 0) return count;
    if(w->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttoupleft(*w->tile[row][col], ++count, piece);
    }

}



int  Wincheck::counttodownright(Tile& t, int count, int piece){
    int row=t.row+1;
    int col=t.col+1;
    if(piece == 0) piece = t.piece;
    if(row > 14 || col > 14) return count;
    if(w->tile[row][col]->piece != piece){
        return count;
    }
    else{
        return this->counttodownright(*w->tile[row][col], ++count, piece);
    }
}



bool Wincheck::winornot(Tile& t){
    int horizcount=counttoleft(t,counttoright(t));
    int verticalcount=counttoup(t, counttodown(t));
    int uprightcount=counttoupright(t, counttodownleft(t));
    int upleftcount=counttoupleft(t, counttodownright(t));

    if((horizcount>=4) || (verticalcount >=4) || (uprightcount>=4) || (upleftcount>=4)){
        Dialog* mydialog = new Dialog;
        if(t.piece==1){
            mydialog->ui->Winlabel->setText("Black Wins");
            mydialog->show();
            return true;
        }

        else if(t.piece==2){
            mydialog->ui->Winlabel->setText("White Wins");
            mydialog->show();
            return true;
        }
    }
    return false;

}
