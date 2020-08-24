class Cell{
  Board board;
  boolean walls[];
  
  Cell(Board b){
    this.board = b;
    
    this.walls = new boolean[4];
    for(int i=0; i<4; i++) walls[i] = false;
  }
  
  void display(){
    if(this.walls[0]) {
      stroke(255, 0, 0, 100);
      strokeWeight(3);
    } else {
      stroke(255, 10);
      strokeWeight(1);
    }
    line(0, 0, this.board.cellSize, 0);
    if(this.walls[1]) {
      stroke(255, 0, 0, 100);
      strokeWeight(3);
    } else {
      stroke(255, 10);
      strokeWeight(1);
    }
    line(this.board.cellSize, 0, this.board.cellSize, this.board.cellSize);
    if(this.walls[2]) {
      stroke(255, 0, 0, 100);
      strokeWeight(3);
    } else {
      stroke(255, 10);
      strokeWeight(1);
    }
    line(this.board.cellSize, this.board.cellSize, 0, this.board.cellSize);
    if(this.walls[3]) {
      stroke(255, 0, 0, 100);
      strokeWeight(3);
    } else {
      stroke(255, 10);
      strokeWeight(1);
    }
    line(0, this.board.cellSize, 0, 0);
  }
}
