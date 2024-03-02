int X,Y,distance=100;
float x,y,angle= 2*PI- PI/2;
void setup(){

size(500,500);
}

void draw(){
   background(255);
   X=width/2;
   Y=height/2;
   x=X+distance*cos(angle);
   y=Y+distance*sin(angle);
   line(X,Y,x,y);
   circle(X,Y,10);
   angle=angle+0.003;
}
