Mystifying ball;
PVector wind = new PVector(0.02,0);
PVector lift = new PVector(0,0.01);
PVector gravity = new PVector(0,0.98);
PVector friction = velocity.set();


void setup(){
  size(1000,1000);
  ball = new Mystifying();
}

void draw(){
  background(255,0,0);
  ball.display();
  ball.update();
  ball.borders();
  ball.applyForce(wind);
  ball.applyForce(friction);
  ball.applyForce(gravity);
  if(location.x > width/2 && location.y < height/2){
    ball.applyForce(gravity);
  }
  if(location.x > width/2 && location.y > height/2){
    ball.applyForce(wind);
  }
  if(location.x < width/2 && location.y < height/2){
    ball.applyForce(friction);
    PVector f = PVector.div(force,mass);
    acceleration.add(friction);
  }
}
    