class Wet{
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector mouse;
  
  Wet(){
    location = new PVector(600,400);
    velocity = new PVector(1,1);
    acceleration = new PVector(mouseX/100,mouseY/100);
  }
  
  void display3(){
    fill(200);
    //body
    ellipse(location.x,location.y,100,35);
    triangle(location.x+50,location.y,location.x+80,location.y+22,location.x+80,location.y-22);
    //eye
    fill(0);
    ellipse(location.x-30,location.y-5,5,5);
    stroke(0);
  }
  void update3(){
     mouse = new PVector(mouseX,mouseY);
    mouse.sub(location);
    mouse.setMag(0.25);
    velocity.add(acceleration);
    velocity.limit(5);
    location.add(velocity);
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