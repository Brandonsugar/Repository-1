Dragon fly;

void setup(){
  size(1000,1000);
  fly = new Dragon();
}

void draw(){
  background(0,150,0);
  fly.display();
  fly.buzz();
}