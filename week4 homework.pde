PImage img;

void setup(){
  size(800,800);
  img=loadImage("222.jpg");
  img.resize(800,800);

}


void draw(){
  background(255);
  float maxSize=map(mouseX,0,width,20,80);
  float minStep=map(mouseY,0,width,5,20);
  for(int i=0;i<width;i+=minStep){
  for(int j=0;j<height;j+=minStep){
  color imgColor=img.get(i,j);
  float circleSize=map(brightness(imgColor),0,100,maxSize
  ,10);
  noStroke();
  fill(imgColor);
  ellipse(i,j,circleSize,circleSize);
  
  }

}   saveFrame ("candychen231007a-######.jpg");


}
