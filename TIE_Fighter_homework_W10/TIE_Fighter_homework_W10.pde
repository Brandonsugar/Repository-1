Fighter spaceFighter;

void setup(){
  size(1000,1000);
  spaceFighter = new Fighter(500,500);
  
}

void draw(){
  background(125);
  spaceFighter.display(500,500);
  spaceFighter.display(650,450);
  spaceFighter.display(450,650);
  spaceFighter.display(650,650);
  spaceFighter.display(300,300);
  spaceFighter.display(100,100);
  spaceFighter.display(900,900);
  spaceFighter.display(900,100);
  spaceFighter.display(100,900);
  spaceFighter.display(900,500);
  
}