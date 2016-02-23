Mystifying ball;
PVector wind = new PVector(0.02,0);
PVector lift = new PVector(0,0.01);
PVector gravity = new PVector(0,0.98);
PVector magnet = new PVector(0,-1);

void setup(){
  size(1000,1000);
  ball = new Mystifying();
}

void draw(){
  PVector friction = ball.velocity.set(0,0); // <-- Pretty sure the problem is here.  
  background(255,0,0);
  ball.display();
  ball.update();
  ball.borders();
  if(ball.location.x > width/2 && ball.location.y < height/2){
    ball.applyForce(gravity);
  }
  if(ball.location.x > width/2 && ball.location.y > height/2){
    ball.applyForce(wind);
  }
  if(ball.location.x < width/2 && ball.location.y < height/2){
    ball.applyForce(friction);
  }
  if(ball.location.x < width/2 && ball.location.x > height/2){
    ball.applyForce(magnet);
  }
}
    