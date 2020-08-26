class Piece {
  GameManager gm;

  int column;
  int line;

  boolean player1;
  boolean player2;

  Piece(GameManager g, boolean p) {
    this.gm = g;
    this.player1 = p;
    this.player2 = !p;

    this.column = (this.gm.nbrCells-1)/2;
    if (this.player1) this.line = 0;
    if (this.player2) this.line = this.gm.nbrCells-1;
  }

  void update() {
  }

  void display() {
    float x = this.gm.board.cellSize * (this.column + 1.0/2);
    float y = this.gm.board.cellSize * (this.line + 1.0/2);
    println(x, y);
    if(this.player1) fill(255, 0, 0);
    if(this.player2) fill(0, 0, 255);
    ellipse(x, y, this.gm.board.cellSize*3/4, this.gm.board.cellSize*3/4);
  }
}
