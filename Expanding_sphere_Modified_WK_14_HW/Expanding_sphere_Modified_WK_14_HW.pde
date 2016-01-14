



void setup(){
  size(1000,1000);
  background(255);
}
void draw(){
  fill(0,0,0,5);
  PVector dimensions = new PVector(50,50);
  PVector growth = new PVector(45,0);
  while(dimensions.x<width && dimensions.y<height){
    dimensions.x=dimensions.x+growth.x;
    dimensions.y=dimensions.y+growth.x;
    ellipse(width/2,height/2,dimensions.x,dimensions.y);
  }
}
  