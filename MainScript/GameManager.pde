class GameManager{
  // Re-arrange the variable by type and alphabetical order
  
  boolean player1Turn;
  int nbrCells;
  Board board;
  
  GameManager(){
    this.player1Turn = true;
    this.nbrCells = 5;
    this.board = new Board(this);
    
  }
  
  void display(){
    this.board.display();
  }
}
