//PImage image;
PImage swatter;
PImage grossfly;
Bee[] bob;
void setup() {
  size(500, 500);
  bob = new Bee[50];
 // image = loadImage("bee.png");
  swatter = loadImage("swatter.png");
  grossfly = loadImage("disgustingfly.png");
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Bee();
  }
}

void draw() {
  background(173, 216, 230);
  for(int i = 0; i < bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
}

class Bee {
  float x, y;
  float speedX, speedY;
  Bee() {
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
    speedX = (int)(Math.random()*5) - 3;
    speedY = (int)(Math.random()*5) - 3;
  }

  void move() {
    if (mouseX > x) {
      x += (int)(Math.random()*5)+10;
    } else{
      x += (int)(Math.random()*5)-2;
    }
    if(mouseY > y) {
      y += (int)(Math.random()*5)-2;
    } else {
      y += (int)(Math.random()*5)-2;
    }

    if (mousePressed) {
   x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
    //  grossfly = image;
    }
  }

  void show() {
  //  image(image, x, y, 50, 50); //bees
     image(swatter, mouseX, mouseY, 50, 80);
  image(grossfly, x, y, 50, 50); //flies

  }
}
