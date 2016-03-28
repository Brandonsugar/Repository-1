class Slow{
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover(float xLoc, float yLoc){
    location = new PVector(xLoc, yLoc);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void display2(){
    stroke(0);
    fill(50,100,50);
    ellipse(location.x,location.y,40,50);
    fill(0,100,0);
    ellipse(location.x,location.y+28.5,7,7);
    ellipse(location.x+24,location.y+10,8,3);
    ellipse(location.x+24,location.y-10,8,3);
    ellipse(location.x-24,location.y-10,8,3);
    ellipse(location.x-24,location.y+10,8,3);
  }
  
  void update2(){
    location.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
  }
  
  void boundary2(){
    if(location.x > width){
      location.x = width/2;
    } else if(location.x < 0){
      location.x = width/2;
    }
    if(location.y > height){
      location.y = height/2;
    } else if(location.y < 0){
      location.y = height/2;
    }
  }
}