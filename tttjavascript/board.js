
class Board{
    constructor(size){
        this.size = size;
        this.board = Array(size * size).fill(null);
        
    }
    won(){

    }
    winner(){

    }
    empty(pos){
        return this.board[pos] === null;
    }
    place_mark(pos, mark){
        if(!this.empty(pos)) return false;
        this.board[pos] = mark;
        return true; 
    }
}
const board = new Board(3);
console.log(board.board);

