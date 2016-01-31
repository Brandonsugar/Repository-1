Dragon fly;
Fresh fish;

void setup(){
  size(1000,1000);
  fly = new Dragon();
  fish = new Fresh();
}

void draw(){
  background(0,130,110);
  fly.display();
  fly.update();
  fly.boundary();
  fish.display();
  fish.update();
}