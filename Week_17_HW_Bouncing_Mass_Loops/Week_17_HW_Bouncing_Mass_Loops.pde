
Bouncing[] balls = new Bouncing[20];


PVector magnet = new PVector(0,-7);

void setup(){
  size(1000,800);
  for(int i=0; i<balls.length; i++){
    balls[i] = new Bouncing();
  }
}

void draw(){
  background(200);
  for(int i=0;i<balls.length; i++){
    balls[i].display();
    balls[i].update();
    balls[i].borders();
    balls[i].gravity();
  
  if(mousePressed){
    balls[i].applyForce(magnet);
  }
  }
}
