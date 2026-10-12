class Aqua {
  // Member Variables
  int x, y, w, h, health, speed, size, value; //,damage,xp,currency;
  PImage a1;

  //Constructor
  Aqua(int x, int y) {
    this.x = x;
    this.y = y;
    w = int(random(50, 100));
    h = int(random(50, 100));
    speed = int(random(4, 5));
    health = 100;
    size = int(random(50, 51));
    a1 = loadImage("A1.png");
  }


  //Member Methods
  void display() {
    imageMode(CENTER);
    image(a1, x, y, 100, 100);
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
  boolean isHit(Egg e) {
    float dis = dist(x, y, e.x, e.y);
    if (dis<50) {
      return true;
    } else {
      return false;
    }
  }
}

class Blue {
  // Member Variables
  int x, y, w, h, health, speed, size; //,damage,xp,currency;
  PImage b1;

  //Constructor
  Blue(int x, int y) {
    this.x = x;
    this.y = y;
    w = int(random(50, 100));
    h = int(random(50, 100));
    speed = int(random(2, 2));
    health = 100;
    size = int(random(50, 51));
    b1 = loadImage("B1.png");
  }


  //Member Methods
  void display() {
    imageMode(CENTER);
    image(b1, x, y, 100, 100);
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
  boolean isHit(Egg e) {
    float dis = dist(x, y, e.x, e.y);
    if (dis<50) {
      return true;
    } else {
      return false;
    }
  }
}

class Green {
  // Member Variables
  int x, y, w, h, health, speed,size; //,damage,xp,currency;
  PImage g1;

  //Constructor
  Green(int x, int y) {
    this.x = x;
    this.y = y;
    w = int(random(50, 100));
    h = int(random(50, 100));
    speed = int(random(2, 3));
    health = 100;
    size = int(random(50, 51));
    g1 = loadImage("G1.png");
  }


  //Member Methods
  void display() {
    imageMode(CENTER);
    image(g1, x, y, 100, 100);
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
  boolean isHit(Egg e) {
    float dis = dist(x, y, e.x, e.y);
    if (dis<50) {
      return true;
    } else {
      return false;
    }
  }
}

class Orange {
  // Member Variables
  int x, y, w, h, health, speed,size; //,damage,xp,currency;
  boolean isHit;
  PImage o1;

  //Constructor
  Orange(int x, int y) {
    this.x = x;
    this.y = y;
    w = int(random(50, 100));
    h = int(random(50, 100));
    speed = int(random(2, 5));
    health = 100;
    isHit = false;
    size = int(random(50, 51));
    o1 = loadImage("O1.png");
  }


  //Member Methods
  void display() {
    imageMode(CENTER);
    image(o1, x, y, 100, 100);
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
  }boolean isHit(Egg e) {
    float dis = dist(x, y, e.x, e.y);
    if (dis<50) {
      return true;
    } else {
      return false;
    }
  }
}

class Purple {
  // Member Variables
  int x, y, w, h, health, speed,size; //,damage,xp,currency;
  boolean isHit;
  PImage p1;

  //Constructor
  Purple(int x, int y) {
    this.x = x;
    this.y = y;
    w = int(random(50, 100));
    h = int(random(50, 100));
    speed = int(random(1, 3));
    health = 100;
    isHit = false;
    size = int(random(50, 51));
    p1 = loadImage("P1.png");
  }


  //Member Methods
  void display() {
    imageMode(CENTER);
    image(p1, x, y, 100, 100);
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
  }boolean isHit(Egg e) {
    float dis = dist(x, y, e.x, e.y);
    if (dis<50) {
      return true;
    } else {
      return false;
    }
  }
}

class Red {
  // Member Variables
  int x, y, w, h, health, speed,size; //,damage,xp,currency;
  boolean isHit;
  PImage r1;

  //Constructor
  Red(int x, int y) {
    this.x = x;
    this.y = y;
    w = int(random(50, 100));
    h = int(random(50, 100));
    speed = int(random(2, 4));
    health = 100;
    isHit = false;
    size = int(random(50, 51));
    r1 = loadImage("R1.png");
  }


  //Member Methods
  void display() {
    imageMode(CENTER);
    image(r1, x, y, 100, 100);
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
  }boolean isHit(Egg e) {
    float dis = dist(x, y, e.x, e.y);
    if (dis<50) {
      return true;
    } else {
      return false;
    }
  }
}

class Sunflower {
  // Member Variables
  int x, y, w, h, health, speed,size; //,damage,xp,currency;
  PImage y1;

  //Constructor
  Sunflower(int x, int y) {
    this.x = x;
    this.y = y;
    w = int(random(50, 100));
    h = int(random(50, 100));
    speed = int(random(3, 3));
    health = 100;
    size = int(random(50, 51));
    y1 = loadImage("Y1.png");
  }


  //Member Methods
  void display() {
    imageMode(CENTER);
    image(y1, x, y, 100, 100);
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
  }boolean isHit(Egg e) {
    float dis = dist(x, y, e.x, e.y);
    if (dis<50) {
      return true;
    } else {
      return false;
    }
  }
}
