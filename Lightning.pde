int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int light = 0;
PImage tree;
void setup(){
  strokeWeight(1);
  size(300, 300);
  tree = loadImage("http://www.pngmart.com/files/3/Black-Tree-PNG-Photos.png");
  background(25, 37, 56);
  frameRate(60);
}

void draw(){
  cloud();
  image(tree,100,200,100,100);
  stroke(200, 218, 247);
  endY = startY + (int)(Math.random() * 10);
  endX = startX + (int)(Math.random() * 19 - 9);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  if(endY > 200){
    if(endX > 125 && endX < 175){
      frameRate(30);
      light = light + 20;
      background(25 + light, 37 + light, 56 + light);
    }
  }
}

void mousePressed()
{
  light = 0;
  frameRate(60);
  background(25, 37, 56);
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
}

void cloud(){
  noStroke();
  fill(130);
  ellipse(150, 0, 50, 25);
  ellipse(150, 10, 50, 25);
  ellipse(160, 10, 50, 25);
  ellipse(170, 20, 50, 25);
}
  


