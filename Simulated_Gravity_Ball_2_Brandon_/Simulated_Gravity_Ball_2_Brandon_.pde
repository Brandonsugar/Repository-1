Ball theBall;

void setup(){
  size(1000,1000);
  theBall = new Ball();
}

void draw(){
  background(150);
  theBall.sideMove();
  theBall.verticalMove();
  theBall.bounce();
  theBall.display();
  theBall.gravity();
}