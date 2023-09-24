float size=80;
float vary=10;
void setup(){size(1920,1080);background(200);
frameRate(2);}
void draw(){for(int i=0;i<width;i++)
{for (int j=0;j<height;j++){float h1=random(-vary,vary);
float w1=random(-vary,vary);
float w=size+w1;
float h=size+h1;
float r=map(i,0,width/size,0,255);
float g=map(j,0,height/size,0,255);
float b=map(w,size-vary,size+vary,0,255);
float a=map(h,size-vary,size+vary,0,255);
fill(r,g,b,a);
stroke(255,a);
rect(i*w,j*h,2*w,2*h);}}
 saveFrame ("candychen230924a-######.jpg");}
