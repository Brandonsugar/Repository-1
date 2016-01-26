class Dragon{
  PVector location;
  
  Dragon(){
    location = new PVector(width/2, height/2);
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
  void buzz(){
    int random = int(random(15));
    if(random == 0){
      location.x=location.x+0;
    }
    if(random == 1){
      location.x=location.x+0;
    }
    if(random == 2){
      location.x = location.x+0;
    }
    if(random == 3){
      location.x=location.x+7.5;
    }
    if(random == 4){
      location.x = location.x-7.5;
    }
    if(random == 5){
      location.y = location.y+7.5;
    }
    if(random == 6){
      location.y = location.y-7.5;
    }
    if(random == 7){
      location.y = location.y-7.5;
    }
        if(random == 8){
      location.x=location.x+0;
    }
        if(random == 9){
      location.x=location.x+0;
    }
        if(random == 10){
      location.x=location.x+0;
    }
        if(random == 11){
      location.x=location.x+0;
    }
        if(random == 12){
      location.x=location.x+0;
    }
        if(random == 13){
      location.x=location.x+0;
    }
        if(random == 14){
      location.x=location.x+0;
    }
        if(random == 15){
      location.x=location.x+0;
    }
  }
}