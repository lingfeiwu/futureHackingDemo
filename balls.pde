float x=50/2;

Ball [] balls;
int nballs=1000;

void setup(){
  surface.setSize(1200,600);
  background(0,0,0);

  balls = new Ball[nballs];
  for (int i=0; i<nballs; i++){
    float d=random(10);
    float x=random(d/2,width-d/2);
    float y=random(height);
    //color c=color(random(250),random(250),random(250));
    color c=color(random(10,50),205,random(200,255));
    float s = random(10);
    balls[i] = new Ball(x,y,d,c,s);
  }
  

  
}

void draw(){
  frameRate(60);
  background(0,0,0);
  //x+=dx;
  //ellipse(x,200,50,50);
  for (int i = 0; i < nballs; i++) { 
    balls[i].display();
    balls[i].move();
  }

}


class Ball{
  
    //parameters
    color Color;
    float centerX, centerY, diameter;
    int sign=1;
    float speed;
    
    //initialize 
  Ball(float x, float y, float r, color c, float s){
    centerX = x;
    centerY = y;
    diameter = r;
    Color = c;
    speed = s;
  }
  
  //functions
  void display(){
     fill(Color);
     ellipse(centerX,centerY,diameter,diameter);
  }
  
  void move(){
    centerX+=sign*speed;
    if (centerX>width-diameter/2 || centerX< diameter/2 ){sign=-1*sign;}
  
  }
  
}