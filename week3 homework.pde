float[] x = new float[5000];
float[] y = new float[5000];

 void setup() {
  size(1000, 1000);
  background(0);
  stroke(255);
  strokeWeight(5);
 
  int i = 0;
  while(i < x.length) {  
    x[i] = random(0, width);
    y[i] = random(0, height);
    i = i + 1;
  }
}
 
void draw() {
  background(0);
  
  int i = 1;
  while(i < 500) {
   line(x[i], y[i],x[i-1],y[i-1]);
  stroke(x[i]/4,y[i]/4,0);
   strokeWeight(1);

 
  

    i = i + 1;
  }
  saveFrame ("candychen230923a-######.jpg");

}
 
 
 
