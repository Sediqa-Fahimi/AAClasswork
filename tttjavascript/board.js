
class Board{
    constructor(size){
        this.size = size;
        this.board = Array(size);
        for(let i = 0; i < this.board.length; i++){
            this.board[i] = Array(size).fill(null);
        }
       
    }
    won(){
        if(!this.winner()) return false;
        return true;
    }
    winner(){
        
    }
    empty(pos){
        return this.board[pos[0]][pos[1]] === null;
    }
    place_mark(pos, mark){
        if(!this.empty(pos)) return false;
        this.board[pos[0]][pos[1]] = mark;
        return true; 
    }
}
const board = new Board(3);

board.place_mark([2,1],'X');
board.place_mark([1,1],'X');
console.log(board.board);
