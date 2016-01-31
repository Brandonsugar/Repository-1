class Dragon{
  PVector location;
  PVector acceleration;
  PVector velocity;
  
  Dragon(){
    location = new PVector(width/2, height/2);
    velocity = new PVector(random(-2,2),random(-2,2));
    acceleration = new PVector(0.001,-0.001);
    
  }
  void display(){
    stroke(0);
    //body
    fill(0,100,0);
    ellipse(location.x,location.y,5,30);
    //eyes
    fill(100,100,255);
    ellipse(location.x+4,location.y+13,7,7);
    ellipse(location.x-4,location.y+13,7,7);
    //wings
    fill(200,200,255);
    ellipse(location.x-10,location.y+4,15,5);
    ellipse(location.x-10,location.y-6,15,5);
    ellipse(location.x+10,location.y+4,15,5);
    ellipse(location.x+10,location.y-6,15,5);
  }
  void update(){
    acceleration = PVector.random2D();
    velocity.add(acceleration);
    velocity.limit(5);
    location.add(velocity);
  }
  void boundary(){
    if(location.x > width+25){
      location.x = width/2;
    } else if(location.x < -25){
      location.x = width/2;
    }
    if(location.y > height+25){
      location.y = height/2;
    }  else if(location.y < -25){
      location.y = height/2;
    }
  }
}