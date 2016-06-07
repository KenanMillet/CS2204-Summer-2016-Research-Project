#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "workerthread.h"

#include <QLabel>
#include <QDebug>
#include <QStringList>

// Codes sent corresponding to what action the player performed
#define SKIP        "00"
#define DIRECT_D0   "10"
#define DIRECT_D1   "11"
#define DIRECT_D2   "12"
#define DIRECT_D3   "13"
#define ADD_D0      "20"
#define ADD_D1      "21"
#define ADD_D2      "22"
#define ADD_D3      "23"



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

    // GUI starts with the "Direct" radio button selected
    ui->directButton->setChecked(true);

    // Qt::AlignCenter aligns the text in the QLabel displays to be centered
    ui->disp0->setAlignment(Qt::AlignCenter);
    ui->disp1->setAlignment(Qt::AlignCenter);
    ui->disp2->setAlignment(Qt::AlignCenter);
    ui->disp3->setAlignment(Qt::AlignCenter);
    ui->p1Points1->setAlignment(Qt::AlignCenter);
    ui->p1Points2->setAlignment(Qt::AlignCenter);
    ui->p2Points1->setAlignment(Qt::AlignCenter);
    ui->p2Points2->setAlignment(Qt::AlignCenter);
    ui->rd0->setAlignment(Qt::AlignCenter);
    ui->rd1->setAlignment(Qt::AlignCenter);
    ui->rd2->setAlignment(Qt::AlignCenter);
    ui->code0->setAlignment(Qt::AlignCenter);
    ui->code1->setAlignment(Qt::AlignCenter);
    ui->p1PointsLabel->setAlignment(Qt::AlignCenter);
    ui->p2PointsLabel->setAlignment(Qt::AlignCenter);
    ui->rd0Label->setAlignment(Qt::AlignCenter);
    ui->rd1Label->setAlignment(Qt::AlignCenter);
    ui->rd2Label->setAlignment(Qt::AlignCenter);
    ui->code0Label->setAlignment(Qt::AlignCenter);
    ui->code1Label->setAlignment(Qt::AlignCenter);

    // Qt::RichText allows us to edit the font of the QLabel displays
    ui->disp0->setTextFormat(Qt::RichText);
    ui->disp1->setTextFormat(Qt::RichText);
    ui->disp2->setTextFormat(Qt::RichText);
    ui->disp3->setTextFormat(Qt::RichText);
    ui->p1Points1->setTextFormat(Qt::RichText);
    ui->p1Points2->setTextFormat(Qt::RichText);
    ui->p2Points1->setTextFormat(Qt::RichText);
    ui->p2Points2->setTextFormat(Qt::RichText);
    ui->rd0->setTextFormat(Qt::RichText);
    ui->rd1->setTextFormat(Qt::RichText);
    ui->rd2->setTextFormat(Qt::RichText);
    ui->code0->setTextFormat(Qt::RichText);
    ui->code1->setTextFormat(Qt::RichText);

    // Set the QLabel displays' font to Arial 60pt
    QFont dispFont("Arial", 60);
    ui->disp0->setFont(dispFont);
    ui->disp1->setFont(dispFont);
    ui->disp2->setFont(dispFont);
    ui->disp3->setFont(dispFont);
    ui->p1Points1->setFont(dispFont);
    ui->p1Points2->setFont(dispFont);
    ui->p2Points1->setFont(dispFont);
    ui->p2Points2->setFont(dispFont);
    ui->rd0->setFont(dispFont);
    ui->rd1->setFont(dispFont);
    ui->rd2->setFont(dispFont);
    ui->code0->setFont(dispFont);
    ui->code1->setFont(dispFont);

    // Set all QLabel displays' to 0
    ui->disp0->setText("0");
    ui->disp1->setText("0");
    ui->disp2->setText("0");
    ui->disp3->setText("0");
    ui->p1Points1->setText("0");
    ui->p1Points2->setText("0");
    ui->p2Points1->setText("0");
    ui->p2Points2->setText("0");
    ui->rd0->setText("0");
    ui->rd1->setText("0");
    ui->rd2->setText("0");
    ui->code0->setText("0");
    ui->code1->setText("0");

    // Set display QString's to also be 0
    display0 = display1 = display2 = display3 = "0";

    // SIGNAL and SLOT mechanisms for GUI interaction with the WorkerThread
    connect(ui->skipButton, SIGNAL(pressed()), this, SLOT(skipPushed()));
    connect(ui->disp0Button, SIGNAL(clicked(bool)), this, SLOT(disp0Pushed()));
    connect(ui->disp1Button, SIGNAL(clicked(bool)), this, SLOT(disp1Pushed()));
    connect(ui->disp2Button, SIGNAL(clicked(bool)), this, SLOT(disp2Pushed()));
    connect(ui->disp3Button, SIGNAL(clicked(bool)), this, SLOT(disp3Pushed()));
    connect(ui->playP1, SIGNAL(clicked(bool)), this, SLOT(nextTurnP1()));
    connect(ui->playP2, SIGNAL(clicked(bool)), this, SLOT(nextTurnP2()));
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

QString MainWindow::getPostColonValue(const QString& data)
{
    int colonIndex = data.indexOf(":");
    int dataSize = data.size();
    QString returnStr;

    for (int i = colonIndex + 1; i < dataSize; ++i)
        returnStr.append(data[i]);

    return returnStr;
}

void MainWindow::updateDisplay(QLabel* disp, const QStringList& data)
{
    // Format of data: [ "dispX:4" ]

    disp->setText(getPostColonValue(data[0]));
}

void MainWindow::updateDisplayRed(const QString& displaySelected)
{
    QString dispValue;
    QString redColor = "#FF0000";
    QString blackColor = "#000000";
    QString colorDispText = tr("<font color='%1'>%2</font>");

    /* displaySelected checking after a player played
     * displaySelected can equal "1", "2", "4", or "8"
     * This is because binary values are used when sending this value over the serial port
     * A 4-digit binary value is set when a display is selected:
     *      disp3 | disp2 | disp1 | disp0 -> 0000
     *      0001 -> disp0 was selected
     *      0010 -> disp1 was selected
     *      0100 -> disp2 was selected
     *      1000 -> disp3 was selected
     * Those binary values correspond to 1, 2, 4, and 8
     */
    if (displaySelected == "1") {
        ui->disp0->setText(colorDispText.arg(redColor, display0));
        ui->disp1->setText(colorDispText.arg(blackColor, display1));
        ui->disp2->setText(colorDispText.arg(blackColor, display2));
        ui->disp3->setText(colorDispText.arg(blackColor, display3));
    }

    else if (displaySelected == "2") {
        ui->disp0->setText(colorDispText.arg(blackColor, display0));
        ui->disp1->setText(colorDispText.arg(redColor, display1));
        ui->disp2->setText(colorDispText.arg(blackColor, display2));
        ui->disp3->setText(colorDispText.arg(blackColor, display3));
    }

    else if (displaySelected == "4") {
        ui->disp0->setText(colorDispText.arg(blackColor, display0));
        ui->disp1->setText(colorDispText.arg(blackColor, display1));
        ui->disp2->setText(colorDispText.arg(redColor, display2));
        ui->disp3->setText(colorDispText.arg(blackColor, display3));
    }

    else if (displaySelected == "8") {
        ui->disp0->setText(colorDispText.arg(blackColor, display0));
        ui->disp1->setText(colorDispText.arg(blackColor, display1));
        ui->disp2->setText(colorDispText.arg(blackColor, display2));
        ui->disp3->setText(colorDispText.arg(redColor, display3));
    }
}

void MainWindow::updateDisplaysBlack()
{
    QString dispValue;
    QString blackColor = "#000000";
    QString colorDispText = tr("<font color='%1'>%2</font>");

    ui->disp0->setText(colorDispText.arg(blackColor, display0));
    ui->disp1->setText(colorDispText.arg(blackColor, display1));
    ui->disp2->setText(colorDispText.arg(blackColor, display2));
    ui->disp3->setText(colorDispText.arg(blackColor, display3));
}

void MainWindow::updateDisplayColor(const QString& p1played, const QString& p2played,
                                    const QString& p1skip, const QString& p2skip,
                                    const QString& p1sel, const QString& p2sel)
{
    QString dispValue;
    QString redColor = "#FF0000";
    QString blackColor = "#000000";
    QString colorDispText = tr("<font color='%1'>%2</font>");

    if (getPostColonValue(p1skip) == "1" || getPostColonValue(p2skip) == "1")
        updateDisplaysBlack();
    else {
        if (getPostColonValue(p1played) == "1") {
            updateDisplayRed(getPostColonValue(p1sel));
        }

        if (getPostColonValue(p2played) == "1") {
            updateDisplayRed(getPostColonValue(p2sel));
        }
    }

}

// LOOK INTO PLACING DISPLAYS INTO A VECTOR AND DOING ITERATIVE UPDATES
void MainWindow::updateGUI(QStringList& data)
{
    QStringList temp;

    // Format of dispListData: [ "dispX:4", "dispY:F", ..., "dispZ:A" ]

    /* QStringList's filter function
     * Searches for the passed in string expression in the QStringList and
     * returns another QStringList with any strings in the original list
     * that contained the expression being searched for.
     */

    temp = data.filter("disp0", Qt::CaseInsensitive);
    if (temp.size() != 0) {
        display0 = getPostColonValue(temp[0]);
//        updateDisplay(ui->disp0, temp);
    }

    temp = data.filter("disp1", Qt::CaseInsensitive);
    if (temp.size() != 0) {
        display1 = getPostColonValue(temp[0]);
//        updateDisplay(ui->disp1, temp);
    }

    temp = data.filter("disp2", Qt::CaseInsensitive);
    if (temp.size() != 0) {
        display2 = getPostColonValue(temp[0]);
//        updateDisplay(ui->disp2, temp);
    }

    temp = data.filter("disp3", Qt::CaseInsensitive);
    if (temp.size() != 0) {
        display3 = getPostColonValue(temp[0]);
//        updateDisplay(ui->disp3, temp);
    }

    temp = data.filter("p1pt1", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->p1Points1, temp);

    temp = data.filter("p1pt2", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->p1Points2, temp);

    temp = data.filter("p2pt1", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->p2Points1, temp);

    temp = data.filter("p2pt2", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->p2Points2, temp);

    temp = data.filter("rd0", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->rd0, temp);

    temp = data.filter("rd1", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->rd1, temp);

    temp = data.filter("rd2", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->rd2, temp);

    temp = data.filter("code0", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->code0, temp);

    temp = data.filter("code1", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->code1, temp);




    QString p1played, p2played, p1skip, p2skip, p1sel, p2sel;

    temp = data.filter("p1played", Qt::CaseInsensitive);
    if (temp.size() != 0)
        p1played = temp[0];
    else
        return;

    temp = data.filter("p2played", Qt::CaseInsensitive);
    if (temp.size() != 0)
        p2played = temp[0];
    else
        return;

    temp = data.filter("p1skip", Qt::CaseInsensitive);
    if (temp.size() != 0)
        p1skip = temp[0];
    else
        return;

    temp = data.filter("p2skip", Qt::CaseInsensitive);
    if (temp.size() != 0)
        p2skip = temp[0];
    else
        return;

    temp = data.filter("p1sel", Qt::CaseInsensitive);
    if (temp.size() != 0)
        p1sel = temp[0];
    else
        return;

    temp = data.filter("p2sel", Qt::CaseInsensitive);
    if (temp.size() != 0)
        p2sel = temp[0];
    else
        return;

    updateDisplayColor(p1played, p2played, p1skip, p2skip, p1sel, p2sel);
}



/*******************************************************************\
 ******************************* SLOTS *****************************\
 *******************************************************************/

void MainWindow::newDataRead(QString data)
{
    // Format of data: "disp0:4,disp1:F,disp2:B,disp3:6,rd:8, etc..."
    QStringList dataList = data.split(",");

    updateGUI(dataList);
}

void MainWindow::skipPushed()
{
    QString sendCode = SKIP;

    this->t->endTurnP1(sendCode);
}

void MainWindow::disp0Pushed()
{
    QString sendCode;

    ui->directButton->isChecked() ? sendCode = "1" : sendCode = "2";
    // "0" is appended because disp0 was selected
    sendCode.append("0");

    this->t->endTurnP1(sendCode);
}

void MainWindow::disp1Pushed()
{
    QString sendCode;

    ui->directButton->isChecked() ? sendCode = "1" : sendCode = "2";
    // "0" is appended because disp1 was selected
    sendCode.append("1");

    this->t->endTurnP1(sendCode);
}

void MainWindow::disp2Pushed()
{
    QString sendCode;

    ui->directButton->isChecked() ? sendCode = "1" : sendCode = "2";
    // "0" is appended because disp2 was selected
    sendCode.append("2");

    this->t->endTurnP1(sendCode);

}

void MainWindow::disp3Pushed()
{
    QString sendCode;

    ui->directButton->isChecked() ? sendCode = "1" : sendCode = "2";
    // "0" is appended because disp3 was selected
    sendCode.append("3");

    this->t->endTurnP1(sendCode);
}

void MainWindow::nextTurnP1()
{
    this->t->nextTurnP1();
}

void MainWindow::nextTurnP2()
{
    this->t->nextTurnP2();
}
