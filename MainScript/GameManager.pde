class GameManager{
  // Re-arrange the variable by type and alphabetical order
  
  boolean player1Turn;
  int nbrCells;
  Board board;
  Piece player1;
  Piece player2;
  
  GameManager(){
    this.player1Turn = true;
    this.nbrCells = 50;
    this.board = new Board(this);
    this.player1 = new Piece(this, true);
    this.player2 = new Piece(this, false);
    
  }
  
  void display(){
    this.board.display();
    this.player1.display();
    this.player2.display();
  }
}
