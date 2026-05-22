
//bricks
int [] x;
int [] y;
boolean [] alive;
int brickd;
int n;
int tempx;
int tempy;



int mode;

final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
final int options = 4;

float bx, by, bd, vx, vy;//ball
float px, pd;//paddle

int timer = 100;

boolean dkey = false;
boolean akey = false;


void setup(){
  mode = game;
  size(1000, 1000);
  
  bx = 500;
  by = 900;
  bd = 10;
  vx = 0;
  vy = 10;
  
  px = 500;
  pd = 100;
  
  //bricks
  brickd = 40;
  n = 45;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  
  tempx = 100;
  tempy = 100;
  
  
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
    if (tempx >= width) {
      tempy = tempy + 100;
      tempx = 100;
    }
    i++;
  }
}




void draw(){
  
  
  if (mode == intro){
    intro();
  }else if (mode == game){
    game();
  }else if (mode == pause){
    pause();
  }else if (mode == gameover){
    gameover();
  }else if (mode == options){
    options();
  }else{
  println("error");
  }
  
}
