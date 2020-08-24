class Board {
  GameManager gm;
  float cellSize;
  
  ArrayList<Cell> cells;

  Board(GameManager g) {
    this.gm = g;
    
    this.cells = new ArrayList<Cell>();
    
    this.cellSize = min(width, height)/this.gm.nbrCells;
    for (int i=0; i<this.gm.nbrCells; i++) {
      for (int j=0; j<this.gm.nbrCells; j++) {
        Cell cell = new Cell(this);
        this.cells.add(cell);
      }
    }
  }

  void display() {
    for(int i=0; i<this.gm.nbrCells; i++){
      for(int j=0; j<this.gm.nbrCells; j++){
        Cell cell = this.cells.get(j*this.gm.nbrCells+i);
        translate(i*this.cellSize, j*this.cellSize);
        cell.display();
        translate(-i*this.cellSize, -j*this.cellSize);
      }
    }
  }
}
