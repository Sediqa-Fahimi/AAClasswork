const Board = require('./board.js');

class Game{
    constructor(reader, size){
        this.reader = reader;
        this.board = new Board(size);
        this.currentPlayer = 'X';
    }
    switchTurn(){
        this.currentPlayer = this.currentPlayer === 'X' ? 'O' : 'X';
    }
    won(){
        return this.board.won();
    }
    over(){
        return this.board.full();
    }
    winner(){
        return this.currentPlayer;
    }
    play(){
       
        this.switchTurn();;
        console.log(this.currentPlayer + `'s turn`);
        this.board.print_board();
        let pos;
        this.reader.question('enter your position, ex: 0 2 : ', (input)=> {
            pos = input.split(' ').map(num => parseInt(num));
            this.board.place_mark(pos,this.currentPlayer);
        })
    
    }
    
    // run(reader, completionCallback){

    // }
}

module.exports = Game;