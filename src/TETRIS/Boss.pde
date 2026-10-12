class Boss {
  // Member Variables
  int x, y, health,size,w,h,lvl;
  PImage B;

  //Constructor
  Boss (int x, int y, int lvl) {
    this.x = x;
    this.y = y;
    B = loadImage("BossV1.png");
    size = 250;
    health = 80;
    if(lvl ==1) {Boss = loadImage("");}
  }

  // Member Methods
  void display () {
    fill(255,5,5);
    ellipse(x,y,w,h);
  }
  
}
