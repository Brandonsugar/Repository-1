int ellipseWidth=101;
int ellipseHeight=101;
int growthRate=5;

void setup(){
  size(1000,1000);
}
void draw(){
  background(255,255,255);
  fill(random(1,255),random(1,255),random(1,255));
  ellipse(width/2,height/2,ellipseWidth,ellipseHeight);
  ellipseWidth=ellipseWidth+growthRate;
  ellipseHeight=ellipseHeight+growthRate;
  if(ellipseWidth>=width-1 && ellipseHeight>=height-1){
    growthRate=growthRate*-1;
  }
  if(ellipseWidth<=100 && ellipseHeight<=100){
    growthRate=growthRate*-1;
  }
  growthRate=growthRate+1;
}