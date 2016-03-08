Mover ball;
PVector gravity = new PVector(0,0.98);
PVector wind = new PVector(random(0,2),0);

void setup(){
  size(1000,500);
  ball = new Mover(100,0);
}

void draw(){
  background(255);
  
  //rectangles
  fill(0,0,255);
  rect(0,height/2,width/4,height/2);
  fill(255,0,0);
  rect(width/4,height/2,width/4,height/2);
  fill(0,255,0);
  rect(width/2,height/2,width/4,height/2);
  fill(0,255,255);
  rect(750,height/2,width/4,height/2);
  fill(255);
  rect(0,0,width/4,height/2);
  rect(width/4,0,width/4,height/2);
  rect(width/2,0,width/4,height/2);
  rect(750,0,width/4,height/2);
   
  ball.display();
  ball.borders();
  ball.update();
  ball.applyForce(gravity);
  
  
  //wind
  if(ball.location.y < height/2){
    ball.applyForce(wind);
  }
  //drag rectangles
  if(ball.location.x < width/4 && ball.location.y > height/2){
    //ball.applyForce(drag);
  float c = 0.8;
  float speed = ball.velocity.mag();
  float dragMagnitude = c * speed * speed;
  PVector drag = ball.velocity.get();
  drag.mult(-1);
  drag.normalize();
  drag.normalize();
  drag.mult(dragMagnitude);
  ball.applyForce(drag);
  }
  if(ball.location.x < width/2 && ball.location.y > height/2 && ball.location.x > width/4){
    //ball.applyForce(drag);
   float c = random(0,0.9);
  float speed = ball.velocity.mag();
  float dragMagnitude = c * speed * speed;
  PVector drag = ball.velocity.get();
  drag.mult(-1);
  drag.normalize();
  drag.normalize();
  drag.mult(dragMagnitude);
  ball.applyForce(drag);
  }
  if(ball.location.x > width/2 && ball.location.x < 750 && ball.location.y > height/2){
    //ball.applyForce(drag);
      float c = 0.3;
  float speed = ball.velocity.mag();
  float dragMagnitude = c * speed * speed;
  PVector drag = ball.velocity.get();
  drag.mult(-1);
  drag.normalize();
  drag.normalize();
  drag.mult(dragMagnitude);
  ball.applyForce(drag);
  }
  if(ball.location.x > 750 && ball.location.x < width && ball.location.y > height/2){
   // ball.applyForce(drag);
      float c = 0.9;
  float speed = ball.velocity.mag();
  float dragMagnitude = c * speed * speed;
  PVector drag = ball.velocity.get();
  drag.mult(-1);
  drag.normalize();
  drag.normalize();
  drag.mult(dragMagnitude);
  ball.applyForce(drag);
  }
}