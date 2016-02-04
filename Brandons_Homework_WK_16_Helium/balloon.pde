class Helium{
  PVector location;
  PVector velocity;
  PVector acceleration;
  color c;
  
  Helium(){
    location = new PVector(random(width),height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void display(){
    strokeWeight(2);
    stroke(255);
    fill(255,0,0);
    ellipse(location.x,location.y,34,34);
    line(location.x,location.y+17,location.x+5,location.y+60);
  }
  void update(){
    location.sub(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
  }
  
  void applyForce(PVector force){
    acceleration.add(force);
  }

  void borders(){
   if(location.x > width-17){
      velocity.x = velocity.x * -0.7;
    } else if(location.x <17){
      velocity.x = velocity.x * -0.7;
    }
    if(location.y > height-17){
      velocity.y = velocity.y * -0.7;
    } else if(location.y < 19){
      velocity.y = velocity.y * -0.7;
    }
  }
}