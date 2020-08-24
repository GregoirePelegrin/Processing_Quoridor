class Piece {
  GameManager gm;

  int column;
  int line;

  boolean player1;

  Piece(GameManager g, boolean p) {
    this.gm = g;
    this.player1 = p;

    if (this.gm.nbrCells%2 == 0) {
      this.column = this.gm.nbrCells/2 - 1;
    } else {
      this.column = (this.gm.nbrCells-1)/2;
    }
    if (this.player1) {
      this.line = 0;
    } else {
      this.line = this.gm.nbrCells-1;
    }
  }

  void update() {
  }

  void display() {
  }
}
