int mode;

final int intro    = 0;
final int game     = 1;
final int gameover = 2;
void setup() {
  size(800,600);
  mode = intro;
}


void draw() {
  if (mode == intro) {
    intro();
  }else if (mode == game){
    game();
  }else if (mode == gameover){
    gameover();
  }else {
    println("Mode error!");
  }
}

void mouseReleased() {
   if (mode == intro) {
    mode = game;
  } else if (mode == game) {
    mode = gameover;
  } else if (mode == gameover) {
    mode = intro;
  } else {
    println("Mode error!");
  }
}
