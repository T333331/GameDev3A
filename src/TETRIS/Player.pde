class Turtle {
  // Member Variables
  int x, y, health;
  PImage t1;

  //Constructor
  Turtle (int x, int y) {
    this.x = x;
    this.y = y;
    t1 = loadImage("Player (1).png");
  }

  // Member Methods
  void display () {
    imageMode(CENTER);
    image(t1, x, y);
  }

  void move(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }
  boolean isHit(Aqua a) {
    float dis = dist(x, y, a.x, a.y);
    if (dis<a.size) {
      return true;
    } else {
      return false;
    }
  }
  boolean isHit(Green g) {
    float dis = dist(x, y, g.x, g.y);
    if (dis<g.size) {
      return true;
    } else {
      return false;
    }
  }
  boolean isHit(Blue b) {
    float dis = dist(x, y, b.x, b.y);
    if (dis<b.size) {
      return true;
    } else {
      return false;
    }
  }
  boolean isHit(Orange o) {
    float dis = dist(x, y, o.x, o.y);
    if (dis<o.size) {
      return true;
    } else {
      return false;
    }
  }
  boolean isHit(Purple p) {
    float dis = dist(x, y, p.x, p.y);
    if (dis<p.size) {
      return true;
    } else {
      return false;
    }
  }
  boolean isHit(Red r) {
    float dis = dist(x, y, r.x, r.y);
    if (dis<r.size) {
      return true;
    } else {
      return false;
    }
  }
  boolean isHit(Sunflower s) {
    float dis = dist(x, y, s.x, s.y);
    if (dis<s.size) {
      return true;
    } else {
      return false;
    }
  }
boolean isHit(Boss B) {
    float dis = dist(x, y, B.x, B.y);
    if (dis<B.size) {
      return true;
    } else {
      return false;
    }
  }
}
