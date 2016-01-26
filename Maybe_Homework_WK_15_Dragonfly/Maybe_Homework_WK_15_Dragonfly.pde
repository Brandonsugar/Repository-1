Dragon Fly;

void setup(){
  size(800,800);
  Fly = new Dragon();
}

void draw(){
  background(255);
  Fly.display();
  Fly.update();
  Fly.boundary();
}