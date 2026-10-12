class Egg {
  PImage tt1;
  int x, y, w, h, speed, damage;

  Egg(int x, int y) {
    this.x = x;
    this.y = y;
    w = 10;
    h = 10;
    speed = 1;
    damage = 50;
    tt1 = loadImage("PGT1.png");
  }

  void display() {
    image(tt1, x, y);
  }

  void move() {
    y = y - speed;
  }

  boolean isOffScreen() {
    if (y<-50) {

      return true;
    } else {
      return false;
    }
  }
}
