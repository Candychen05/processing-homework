float r=1;
void setup(){size(1920,1080);
background(0);
frameRate(10);}
void draw(){smooth();
noFill();
stroke(255,255,random(0,255));
strokeWeight(random(0,10));
ellipse(2192/3,560/3,r+r/3,r+r/3);
ellipse(107/2,1349/2,r+r/3,r+r/3);
ellipse(1617,529,r+r/3,r+r/3);
ellipse(1088,880,r+r/3,r+r/3);
r=r+15;
if(r>1080){r=0;background(0);}
saveFrame ("photo-######.jpg");}
