class Annoying{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  float G;
  
  Mover(float xLoc, float yLoc){
    location = new PVector(xLoc,yLoc);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = random(1,5);
    G = 1;
  }
  
 PVector attract(Mover bug){
   PVector force = PVector.sub(location, bug.location);
   float distance = force.mag();
   distance = constrain(distance,5.0,25.0);
   
   force.normalize();
   float strength = (G * mass * mass) / distance * distance);
   force.mult(strength);
   return force;
 }
  
  void display(){
    stroke(0);
    fill(0);
    ellipse(location.x,location.y,3,3);
  }
  
  void update(){
  velocity.add(acceleration);
  location.add(velocity);
  acceleration.mult(0);
}

void applyForce(PVector force){
  acceleration.add(force);
}
}