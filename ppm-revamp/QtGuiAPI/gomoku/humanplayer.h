#ifndef HUMANPLAYER
#define HUMANPLAYER
#include "player.h"


class Tile;
class MainWindow;

class humanplayer : public Player{
public:
       humanplayer(MainWindow* = nullptr);
       Tile* play(Tile* t);


};




#endif // HUMANPLAYER

