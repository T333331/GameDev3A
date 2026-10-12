class Powerup {
  int x, y, value, speed;
  PImage pow1;

  Powerup(int x, int y) {
    this.x = x;
    this. y = y;
    speed = int(random(2, 5));
    pow1 = loadImage("POWERUPS.png");
  }

  void display() {
    image(pow1, x, y);
  }


  void move() {
    y = y + speed;
  }

  boolean isOffScreen() {
    if (y>height+50) {

      return true;
    } else {
      return false;
    }
  }
  boolean isHit(Turtle t) {
    float dis = dist(x, y, t.x, t.y);
    if (dis<50) {
      return true;
    } else {
      return false;
    }
  }
  
}
