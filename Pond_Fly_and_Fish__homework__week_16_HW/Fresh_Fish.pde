class Fresh{
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector mouse;
  
  Fresh(){
    location = new PVector(600,400);
    velocity = new PVector(1,1);
    acceleration = new PVector(mouseX/100,mouseY/100);
  }
  
  void display(){
    fill(200);
    //body
    ellipse(location.x,location.y,100,35);
    triangle(location.x+50,location.y,location.x+80,location.y+22,location.x+80,location.y-22);
    //eye
    fill(0);
    ellipse(location.x-30,location.y-5,5,5);
    stroke(0);
  }
  void update(){
     mouse = new PVector(mouseX,mouseY);
    mouse.sub(location);
    mouse.setMag(0.25);
    acceleration = mouse;
    velocity.add(acceleration);
    velocity.limit(5);
    location.add(velocity);
  }
}