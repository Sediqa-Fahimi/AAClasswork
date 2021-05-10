const Board = require('./board');
const Player = require('./player');

class Battleship{
    constructor(n){
        this.player = new Player();
        this.board = new Board(n);
        this.remainingMisses = Math.floor((n * n) / 2);
    }
    board(){
        return this.board;
    }
    player(){
        return this.player;
    }
    startGame(){
        this.board().placeRandomShips();
        const numShips = this.board().numShips();
        console.log(`There are currently ${numShips} hidden ships.`);
        this.board().print();
    }
    
}

module.exports = Battleship;