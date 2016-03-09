class Mover{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  Mover(float xLoc, float yLoc){
    location = new PVector(xLoc,yLoc);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = random(4,6);
  }
  
  void applyForce(PVector force){
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void display(){
    stroke(0);
    fill(150);
    ellipse(location.x,location.y,20*mass,20*mass);
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void borders(){
    if(location.x > width){
      velocity.x = velocity.x *-1;
    } else if(location.x < 5){
      velocity.x = velocity.x * -1;
    }
    if(location.y > height){
      velocity.y = velocity.y * -1;
      //location.y = random(height);
      //location.x = 50;
    } else if(location.y < 0){
      velocity.y = velocity.y * -1;
    }
  }
}
