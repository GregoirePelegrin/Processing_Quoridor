GameManager gm;

void setup(){
  size(600, 600);
  frameRate(30);
  
  gm = new GameManager();
}

void draw(){
  background(0);
  
  gm.display();
}
