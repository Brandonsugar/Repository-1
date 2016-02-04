Helium balloon;
PVector wind = new PVector(-0.02,0);
PVector lift = new PVector(0,0.01);


void setup(){
size(1000,800);
balloon = new Helium();
}

void draw(){
  background(200,200,255);
  balloon.display();
  balloon.update();
  balloon.borders();
  balloon.applyForce(lift);
  
  if(mousePressed){
    balloon.applyForce(wind);
  }
}