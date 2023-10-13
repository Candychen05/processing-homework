PImage img;
color black;
void setup() {
size(1080, 1480);
  background(100);
  black = color(0);
  img= loadImage("111.jpg");
img.resize(1000,1000);}

void draw() {
img.loadPixels();

  for (int x = 0;x < img.width;x++) {
    for (int y = 0;y < img.width;y++) {
     int tpc =img.get(x,y); 
      if (x%20==0) {
       img.set(x-1,y-1,tpc);
      } else if (y%20==0) {
        img.set(x+1,y-1,tpc);
      } else {
        img.set(x+1,y+1,tpc);
      }
    }
  }
 img.updatePixels();
  image(img,0,0,width,height);
  filter(  THRESHOLD,0.6);
   saveFrame ("candychen231013a-######.jpg");
}

//void draw(){
//for(int a=0;a<img.width;a++)
//{for(int b=0;b<img.width;b++)
//{int bright=img.brightness(x,y);
//}}}
