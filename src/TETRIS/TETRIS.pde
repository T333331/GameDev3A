//Diana Neal Tetris Game
// Add start, loop, and 3 sounds
// This is a lot less optimized than it should be but having 7 separate objects takes a toll on the code ig
import processing.sound.*;
SoundFile file;
SoundFile file1;
SoundFile file2;
SoundFile file3;
SoundFile file4;
import gifAnimation.*;
ArrayList<Blue> blues = new ArrayList<Blue>();
ArrayList<Sunflower> sunflowers = new ArrayList<Sunflower>();
ArrayList<Aqua> aquas = new ArrayList<Aqua>();
ArrayList<Orange> oranges = new ArrayList<Orange>();
ArrayList<Green> greens = new ArrayList<Green>();
ArrayList<Purple> purples = new ArrayList<Purple>();
ArrayList<Red> reds = new ArrayList<Red>();
ArrayList<Powerup> pows = new ArrayList<Powerup>();
ArrayList<Egg> eggs = new ArrayList<Egg>();
Boss boss01;
Turtle turtle01;
Timer BD, YD, AD, GD, OD, PD, RD, PowD, BossD;
PImage bg;
PImage GO;
PImage BF;
PImage Boss;
int score, health, counter, BossHP,lvl;

void setup () {
  file = new SoundFile(this, "Laser1.mp3");
  file1 = new SoundFile(this, "GameOver.mp3");
  file2 = new SoundFile(this, "Hit.mp3");
  file3 = new SoundFile(this, "Power.mp3");
  file4 = new SoundFile(this, "Tetris.mp3");
  file4.play();
  size(350, 600);
  pows.add(new Powerup(int(random(width)), -60));
  turtle01 = new Turtle(width/2, height/2);
  BD = new Timer(1800);
  YD = new Timer(1790);
  AD = new Timer(1359);
  OD = new Timer(2566);
  GD = new Timer(1444);
  PD = new Timer(4367);
  RD = new Timer(3667);
  PowD = new Timer(4356);
  BD.start();
  YD.start();
  AD.start();
  GD.start();
  OD.start();
  PD.start();
  RD.start();
  PowD.start();
  bg = loadImage("BG.png");
  GO = loadImage("GBGO.png");
  BF = loadImage("BF.png");
  score = 0;
  health = 100;
  BossHP = 40;
  lvl = 0;
}

void draw () {
  noCursor();
  image(bg, width/2, height/2);

  if (turtle01.health<1) {
    score = 0;
    turtle01.health = 400;
  }

  if (BD.isFinished() == true) {
    blues.add(new Blue(int(random(width)), -50));
    BD.start();
  }
  if (YD.isFinished() == true) {
    sunflowers.add(new Sunflower(int(random(width)), -50));
    YD.start();
  }
  if (AD.isFinished() == true) {
    aquas.add(new Aqua(int(random(width)), -50));
    AD.start();
  }
  if (OD.isFinished() == true) {
    oranges.add(new Orange(int(random(width)), -50));
    OD.start();
  }
  if (GD.isFinished() == true) {
    greens.add(new Green(int(random(width)), -50));
    GD.start();
  }
  if (PD.isFinished() == true) {
    purples.add(new Purple(int(random(width)), -50));
    PD.start();
  }
  if (RD.isFinished() == true) {
    reds.add(new Red(int(random(width)), -50));
    RD.start();
  }

  if (PowD.isFinished() == true) {
    pows.add(new Powerup(int(random(width)), -50));
    PowD.start();
  }
  
  turtle01.move(mouseX, mouseY);
  turtle01.display();

///////////////////////////////////////////////////////////////////////////
  //DISPLAYING LASERS
  for (int i = 0; i < eggs.size(); i++) {
    println(eggs.size());
    Egg e = eggs.get(i);
    for (int j = 0; j < aquas.size(); j++) {
      Aqua a = aquas.get(j);
      if (a.isHit(e)) {
        eggs.remove(e);
        aquas.remove(a);
        score = score += 5;
      }
    }
    
    e.display();
    e.move();
    if (e.isOffScreen() == true) {
      eggs.remove(e);
    }
  }
  ///////////////////////////////////////////////////////////////////////////
  for (int i = 0; i < eggs.size(); i++) {
    println(eggs.size());
    Egg e = eggs.get(i);
    for (int j = 0; j < greens.size(); j++) {
      Green g = greens.get(j);
      if (g.isHit(e)) {
        eggs.remove(e);
        greens.remove(g);
        score = score += 5;
      }
    }
    e.move();

    if (e.isOffScreen() == true) {
      eggs.remove(e);
    }
  }
///////////////////////////////////////////////////////////////////////////
 for (int i = 0; i < eggs.size(); i++) {
    println(eggs.size());
    Egg e = eggs.get(i);
    for (int j = 0; j < blues.size(); j++) {
      Blue b = blues.get(j);
      if (b.isHit(e)) {
        eggs.remove(e);
        blues.remove(b);
        score = score += 5;
      }
    }
    e.move();

    if (e.isOffScreen() == true) {
      eggs.remove(e);
    }
  }
///////////////////////////////////////////////////////////////////////////
for (int i = 0; i < eggs.size(); i++) {
    println(eggs.size());
    Egg e = eggs.get(i);
    for (int j = 0; j < oranges.size(); j++) {
      Orange o = oranges.get(j);
      if (o.isHit(e)) {
        eggs.remove(e);
        oranges.remove(o);
        score = score += 5;
      }
    }
    e.move();

    if (e.isOffScreen() == true) {
      eggs.remove(e);
    }
  }
///////////////////////////////////////////////////////////////////////////
for (int i = 0; i < eggs.size(); i++) {
    println(eggs.size());
    Egg e = eggs.get(i);
    for (int j = 0; j < purples.size(); j++) {
      Purple p = purples.get(j);
      if (p.isHit(e)) {
        eggs.remove(e);
        purples.remove(p);
        score = score += 5;
      }
    }
    e.move();

    if (e.isOffScreen() == true) {
      eggs.remove(e);
    }
  }
///////////////////////////////////////////////////////////////////////////
for (int i = 0; i < eggs.size(); i++) {
    println(eggs.size());
    Egg e = eggs.get(i);
    for (int j = 0; j < reds.size(); j++) {
      Red r = reds.get(j);
      if (r.isHit(e)) {
        eggs.remove(e);
        reds.remove(r);
        score = score += 5;
      }
    }
    e.move();

    if (e.isOffScreen() == true) {
      eggs.remove(e);
    }
  }
///////////////////////////////////////////////////////////////////////////
for (int i = 0; i < eggs.size(); i++) {
    println(eggs.size());
    Egg e = eggs.get(i);
    for (int j = 0; j < sunflowers.size(); j++) {
      Sunflower s = sunflowers.get(j);
      if (s.isHit(e)) {
        eggs.remove(e);
        sunflowers.remove(s);
        score = score += 5;
      }
    }
    e.move();

    if (e.isOffScreen() == true) {
      eggs.remove(e);
    }
  }
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
  for (int i = 0; i < blues.size(); i++) {
    println(blues.size());
    Blue b = blues.get(i);
    b.display();
    b.move();
      if (turtle01.isHit(b)) {
      blues.remove(b);
      health -= 5;
      file2.play();
    }
    if (b.isOffScreen() == true) {
      blues.remove(b);
      health -= 5;
      counter +=1;
  }
  if (counter >= 10) {blues.remove(b);}
  }
  ///////////////////////////////////////////////////////////////////////////
  for (int i = 0; i < sunflowers.size(); i++) {
    println(sunflowers.size());
    Sunflower s = sunflowers.get(i);
    s.display();
    s.move();
      if (turtle01.isHit(s)) {
      sunflowers.remove(s);
      health -= 5;
      file2.play();
    }
    if (s.isOffScreen() == true) {
      sunflowers.remove(s);
      health -= 5;
      counter +=1;
  }
  if (counter >= 10) {sunflowers.remove(s);}
  }
///////////////////////////////////////////////////////////////////////////
  for (int i = 0; i < aquas.size(); i++) {
    println(aquas.size());
    Aqua a = aquas.get(i);
    a.display();
    a.move();
    if (turtle01.isHit(a)) {
      aquas.remove(a);
      health -= 5;
      file2.play();
    }
    if (a.isOffScreen() == true) {
      aquas.remove(a);
      health -= 5;
      counter +=1;
    }
    if (counter >= 10) {aquas.remove(a);}
  }
///////////////////////////////////////////////////////////////////////////
  for (int i = 0; i < greens.size(); i++) {
    println(greens.size());
    Green g = greens.get(i);
    g.display();
    g.move();
    if (turtle01.isHit(g)) {
      greens.remove(g);
      health -= 5;
      file2.play();
    }
    if (g.isOffScreen() == true) {
      greens.remove(g);
      health -= 5;
      counter +=1;
    }
    if (counter >= 10) {greens.remove(g);}
  }
///////////////////////////////////////////////////////////////////////////
  for (int i = 0; i < reds.size(); i++) {
    println(reds.size());
    Red r = reds.get(i);
    r.display();
    r.move();
    if (turtle01.isHit(r)) {
      reds.remove(r);
      health -= 5;
      file2.play();
    }
    if (r.isOffScreen() == true) {
      reds.remove(r);
      health -= 5;
      counter +=1;
    }
    if (counter >= 10) {reds.remove(r);}
///////////////////////////////////////////////////////////////////////////    
  }
  for (int i = 0; i < purples.size(); i++) {
    println(purples.size());
    Purple p = purples.get(i);
    p.display();
    p.move();
    if (turtle01.isHit(p)) {
      purples.remove(p);
      health -= 5;
      file2.play();
    }
    if (p.isOffScreen() == true) {
      purples.remove(p);
      health -= 5;
      counter +=1;
    }
    if (counter >= 10) {purples.remove(p);}
///////////////////////////////////////////////////////////////////////////    
  }
  for (int i = 0; i < oranges.size(); i++) {
    println(oranges.size());
    Orange o = oranges.get(i);
    o.display();
    o.move();
    if (turtle01.isHit(o)) {
      oranges.remove(o);
      health -= 5;
      file2.play();
    }
    if (o.isOffScreen() == true) {
      oranges.remove(o);
      health -= 5;
      counter +=1;
    }
    if (counter >= 10) {oranges.remove(o);}
///////////////////////////////////////////////////////////////////////////    
  }

  for (int i = 0; i < pows.size(); i++) {
    println(pows.size());
    Powerup p = pows.get(i);
    p.display();
    p.move();
    if (p.isHit(turtle01)) {
      pows.remove(p);
      health = health + 20;
      file3.play();
    }
    if (p.isOffScreen() == true) {
      pows.remove(p);
    }  
    if (counter >= 10) {pows.remove(p);}
  }
///////////////////////////////////////////////////////////////////////////
  infoPanel();
  healthPanel();
  
  if(health == 0) {
  file1.play();
  image(GO,width/2,height/2);
  textSize(25);
  text("Game Over! Score: " + score, 70, 300);
  textSize(45);
  text(" " + score, 155, 52);
  noLoop();
  }

if(counter >= 10) {
lvl = 1;
}
if(lvl == 1) {bg = loadImage("BF.png");}

}

void mousePressed() {
  //Laser.play();
  eggs.add(new Egg(turtle01.x, turtle01.y));
  file.play();
}

void infoPanel () {
  textSize(45);
  text(" " + score, 155, 52);
}

void healthPanel() {
  textSize(15);
  text("Health: "+ health, 263, 28);
}
