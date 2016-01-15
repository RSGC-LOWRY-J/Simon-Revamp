//Simon the game summative hbiggyi

import processing.sound.*;

Detector circle;   //Detector class

SoundFile q;      //Gives sounds names
SoundFile w;
SoundFile a;
SoundFile s;



void setup() {

  size(700, 700);           //Canvas size
  background(0);            //Background colour

  q = new SoundFile(this, "q.mp3");                //Declares hitsounds as soundfiles
  w = new SoundFile(this, "w.mp3");
  a = new SoundFile(this, "a.mp3");
  s = new SoundFile(this, "s.mp3");

  fill(0, 255, 0);                                  //Draw 4 coloured squares
  quad(0, 0, 350, 0, 350, 350, 0, 350);
  fill(255, 0, 0);
  quad(350, 0, 700, 0, 750, 350, 350, 350);
  fill(255, 243, 3);
  quad(0, 350, 350, 350, 350, 700, 0, 700);
  fill(0, 0, 255);
  quad(350, 350, 700, 350, 700, 700, 350, 700);


  circle = new Detector (-25, -25);              //Places a detector in the program
}

void draw() {
}


void keyPressed() {

  if (key == 'q') {

    if (circle.getY() == -25) {
      circle.y1 = 25;
      circle.x1 = 25;
    }

    //fill(164, 242, 170);
    //quad(0, 0, 350, 0, 350, 350, 0, 350);
    //fill(0);
    //textSize(90);
    //text("Q", 130, 190);
    //q.play();
  }

  if (key == 'w') {
    fill(242, 164, 166);
    quad(350, 0, 700, 0, 750, 350, 350, 350);
    fill(0);
    textSize(90);
    text("W", 480, 190);
    w.play();
  }

  if (key == 'a') {
    fill(241, 242, 164);
    quad(0, 350, 350, 350, 350, 700, 0, 700);
    fill(0);
    textSize(90);
    text("A", 130, 540);
    a.play();
  }

  if (key == 's') {
    fill( 175, 164, 242);
    quad(350, 350, 700, 350, 700, 700, 350, 700);
    fill(0);
    textSize(90);
    text("S", 480, 540);
    s.play();
  }
}

void keyReleased() {

  if (key == 'q') {
    fill(0, 255, 0);
    quad(0, 0, 350, 0, 350, 350, 0, 350);
  }

  if (key == 'w') {
    fill(255, 0, 0);
    quad(350, 0, 700, 0, 750, 350, 350, 350);
  }

  if (key == 'a') {
    fill(255, 243, 3);
    quad(0, 350, 350, 350, 350, 700, 0, 700);
  }

  if (key == 's') {
    fill(0, 0, 255);
    quad(350, 350, 700, 350, 700, 700, 350, 700);
  }
}