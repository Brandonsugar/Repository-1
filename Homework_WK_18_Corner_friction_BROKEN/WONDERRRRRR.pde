class Mystifying{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  float c = 0.01;
  color c;
  
  Mystifying(){
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-2,2),random(-2,2));
    acceleration =  new PVector(0,0);
    mass = random(1,6);
  }
  
  void display(){
    strokeWeight(2);
    stroke(255);
    fill(0);
    ellipse(location.x,location.y,15*mass,15*mass);
    fill(0,255,0);
    rect(0,0,width/2,height/2);
    fill(0,0,255);
    rect(0,height/2,width/2,height/2);
    fill(255);
    rect(width/2,height/2,width/2,height/2);
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
    if(location.x > width-7.5){
      velocity.x = velocity.x * -0.98;
    } else if(location.x < 7.5){
      velocity.x = velocity.x * -0.98;
    }
    if(location.y > height-7.5){
      velocity.y = velocity.y*-0.98;
    } else if(location.y < 7.5){
      velocity.y = velocity.y * -0.98;
    }
  }
}