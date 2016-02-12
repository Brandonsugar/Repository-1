class Bouncing{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  float gravity;
  
  Bouncing(){
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-2,2),random(-2,2));
    acceleration = new PVector(0,0);
    mass = random(1,6);
    gravity = 0.98;
  }
  void display(){
    stroke(0);
    fill(0,200,0);
    ellipse(location.x,location.y,15*mass,15*mass);
  }
  void gravity(){
    velocity.y = velocity.y+gravity;
  }
  void applyForce(PVector force){
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  void borders(){
    if(location.x < 7.5){
      velocity.x = velocity.x * -0.98;
    } else if(location.x > width-7.5){
      velocity.x = velocity.x * -0.98;
    }
    if(location.y < 57.5){
      velocity.y = velocity.y * -0.98;
    } else if(location.y > height-7.5){
      velocity.y = velocity.y *-0.98;
    }
  }
  void update(){
    location.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
  }
}
    