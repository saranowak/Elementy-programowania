float x = 100;
float y = 100;
float xspeed = 2;
float yspeed = 2;
int xSize = 15;
int ySize = 15;

void setup() {
  size(640, 640);
  PImage img;
  img = loadImage("data/pies.png");
  background(img);
  smooth();
}

void draw() {
  drawBall();
  switch(key) {
  case 'a': 
    moveLeft();
    break;
  case 'w': 
    moveUp();
    break;
  case 's': 
    moveDown();
    break;
  case 'd': 
    moveRight();
    break;

  default:
    println("Move somewhere");
    break;
  }
}

void drawBall() {
  float redGradient = 256/x*y;
  float greenGradient = 256/y*x;
  float blueGradient = 256/y*x;
  stroke(redGradient, greenGradient, blueGradient);
  fill(redGradient, greenGradient, blueGradient);
  ellipse(x, y, xSize, ySize);
}

void moveRight() {
  if (keyPressed && (x < width)) {
    x = x + xspeed;
  }
}

void moveLeft() {
  if (keyPressed && (x > 0)) {
    x = x - xspeed;
  }
}

void moveUp() {
  if (keyPressed && (y > 0)) {
    y = y - yspeed;
  }
}

void moveDown() {
  if (keyPressed && (y < height)) {
    y = y + yspeed;
  }
}

