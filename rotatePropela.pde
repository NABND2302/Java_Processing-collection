int X,Y,distance=100;
float x,y,x1,y1;
float angle= 2*PI- PI/2;
float angle1= 2*PI+PI/2;
float mainSec=6*PI/2;
float secAngle=(2*PI+mainSec),secX,secY;
float secAngle1=(PI-mainSec),secX1,secY1;

void setup(){

size(500,500);
}

void draw(){
   background(255);
   X=width/2;
   Y=height/2;
   x=X+distance*cos(angle);
   y=Y+distance*sin(angle);
   secX=X+50*cos(secAngle);
   secY=Y+50*sin(secAngle);
   x1=X+distance*cos(angle1);
   y1=Y+distance*sin(angle1);
   secX1=X+50*cos(secAngle1);
   secY1=Y+50*sin(secAngle1);
   stroke(255,0,255);
   //line(X,Y,x,y);
   //line(X,Y,secX,secY);//blue line
   //line(x,y,secX,secY);//triangle line
   //line(X,Y,x1,y1);
   //line(X,Y,secX1,secY1);
   //line(x1,y1,secX1,secY1);//triangle 
   triangle(X,Y,x,y,secX,secY);
   triangle(X,Y,x1,y1,secX1,secY1);
   circle(X,Y,10);
   angle=angle+(PI/60); // second
   secAngle=secAngle+(PI/60);//minute
   angle1=angle1+(PI/60); // second
   secAngle1=secAngle1+(PI/60);//minute
   
}
