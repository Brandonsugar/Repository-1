class Mystifying{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  color c;
  
  Mystifying(){
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-1,1),random(-2,2));
    acceleration =  new PVector(0,0);
    mass = random(1,6);
  }
  
  void display(){
    strokeWeight(2);
    stroke(255);
    fill(0);
    ellipse(location.x,location.y,15*mass,15*mass);
    line(width/2,0,width/2,height);
    line(0,height/2,width,height/2);
  }
  void update(){
    location.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
  }
  
  void applyForce(PVector force){
    acceleration.add(force);
    PVector f = PVector.div(force, mass);
    acceleration.add(f);

  }
  
  void borders(){
    if(location.x > width-7.5){
      velocity.x = velocity.x * -0.7;
    } else if(location.x < 7.5){
      velocity.x = velocity.x * -0.7;
    }
    if(location.y > height-7.5){
      velocity.y = velocity.y * -0.7;
    } else if(location.y < 7.5){
      velocity.y = velocity.y * -0.7;
    }
  }
}