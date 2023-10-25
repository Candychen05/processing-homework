//import processing.svg.*;
int num = 20;
PVector[] pos;
color[] c; 
import processing.pdf.*;
void setup() {
  size(1000, 1000);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  background(0, 0, 100);
  smooth();
  mousePressed();
  //beginRecord(SVG, "filename.svg");
}

void draw() {
  for (int i = 5; i < num; i ++) {
    fill(c[i]);
    beginShape();
    vertex(pos[i].x, pos[i].y);
    vertex(pos[i-1].x, pos[i-1].y);
    vertex(pos[i-2].x, pos[i-2].y);
    vertex(pos[i].x, pos[i].y);
    endShape();
    
  //endRecord();
  }
}

void mousePressed() {
  pos = new PVector[num];
  c = new color[num];
  for (int i = 0; i < num; i ++) {
    pos[i] = new PVector(random(width), random(height));
    c[i] = color(random(100), 8, 80, 3);
  }
  fill(0, 0, 100);
  rect(0, 0, width, height);  endRecord();
  saveFrame ("candychen230923a-######.png");
}
