#include "physics.h"
#include "datahub.h"
#include <QCoreApplication>

physics::physics(): stop(false) {}

void physics::start(){

        if ( theball->pos().x() + theball->boundingRect().left() < scene->sceneRect().left() )
        {
            theball->flipX();
            theball->setX(scene->sceneRect().left() - theball->boundingRect().left());
        }
        if( theball->pos().x() + theball->boundingRect().right() > scene->sceneRect().right() )
        {
            theball->flipX();
            theball->setX(scene->sceneRect().right() - theball->boundingRect().right());
        }


        if ( theball->pos().y() + theball->boundingRect().top() < scene->sceneRect().top() )
        {
            theball->flipY();
            theball->setY(scene->sceneRect().top() - theball->boundingRect().top());
            //CU->reset();
        }
        if( theball->pos().y() + theball->boundingRect().bottom() > scene->sceneRect().bottom() )
        {
            theball->flipY();
            theball->setY(scene->sceneRect().bottom() - theball->boundingRect().bottom());
        }


        if  ((thepaddle1->pos().x() < 0 && (Decision(char(thepaddle1->direction) & char(LEFT)) == LEFT)) || ( thepaddle1->pos().x() + thepaddle1->boundingRect().right() > scene->sceneRect().right()  && (Decision(char(thepaddle1->direction) & char(RIGHT)) == RIGHT)))
        {
            thepaddle1->velocityX = 0;
        }
        else thepaddle1->velocityX = 10;


        if  ((thepaddle2->pos().x() < 0 && (Decision(char(thepaddle2->direction) & char(LEFT)) == LEFT)) || ( thepaddle2->pos().x() + thepaddle2->boundingRect().right() > scene->sceneRect().right()  && (Decision(char(thepaddle2->direction) & char(RIGHT)) == RIGHT)))
        {
            thepaddle2->velocityX = 0;
        }
        else thepaddle2->velocityX = 10;


        if  ((thepaddle1->pos().y() < 0 && (Decision(char(thepaddle1->direction) & char(UP)) == UP)) || (( thepaddle1->pos().y() + thepaddle1->boundingRect().bottom() > scene->sceneRect().bottom()/2)  && (Decision(char(thepaddle1->direction) & char(DOWN)) == DOWN)))
        {
            thepaddle1->velocityY = 0;
        }
        else thepaddle1->velocityY = 10;

        if  ((thepaddle2->pos().y() < scene->sceneRect().bottom()/2 && (Decision(char(thepaddle2->direction) & char(UP)) == UP)) || ( thepaddle2->pos().y() + thepaddle2->boundingRect().bottom() > scene->sceneRect().bottom()  && (Decision(char(thepaddle2->direction) & char(DOWN)) == DOWN)))
        {
            thepaddle2->velocityY = 0;
        }
        else thepaddle2->velocityY = 10;


        if ( thepaddle1->collidesWithItem(theball) )
        {
            if(theball->y() > thepaddle1->y()){
                theball->setY((thepaddle1->boundingRect().bottom() + thepaddle1->pos().y()) + theball->boundingRect().bottom() + 1);
                theball->flipY();
            }
            else if(theball->y() < thepaddle1->y()){
                theball->setY((0-thepaddle1->boundingRect().bottom() + thepaddle1->pos().y()) - theball->boundingRect().bottom() - 1);
                theball->flipY();
            }
        }


        if ( thepaddle2->collidesWithItem(theball) )
        {
            if(theball->y() > thepaddle2->y()){
                theball->setY((thepaddle2->boundingRect().bottom() + thepaddle2->pos().y()) + theball->boundingRect().bottom() + 1);
                theball->flipY();
            }
            else if(theball->y() < thepaddle2->y()){

                theball->setY((0-thepaddle2->boundingRect().bottom() + thepaddle2->pos().y()) - theball->boundingRect().bottom() - 1);
                theball->flipY();
            }
        }



}
