Annoying bug;
Slow turtle;
Wet fish;


void setup(){
  size(1000,1000);
  fish = new Wet(width/2,height/2);
  bug = new Annoying(random(width),500);
  turtle = new Slow(random(width),500);
  PVector repulsion = new PVector(1,1);
}

void draw(){
  background(0,50,0);
  PVector force = bug.attract(turtle);
  turtle.applyForce(force);
  
  //Scary Croc
  fill(0,100,0);
  ellipse(100,125,70,300);
  point(125,255);
  point(125,255);
  
  bug.display();
  bug.update();
  turtle.display2();
  turtle.update2();
  turtle.boundary2();
  fish.display3();
  fish.update3();
  fish.boundary3();
  
  
  if(turtle.location.x < 300 && turtle.location.y < 350){
    turtle.applyForce(repulsion);
  }
}