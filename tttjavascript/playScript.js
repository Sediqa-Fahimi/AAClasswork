const Game = require('./game.js');
const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});
reader.question('enter your board size 3, 4, etc...:', (size)=>{
    const game = new Game(reader, parseInt(size));
    while(!game.over() && !game.won()){
        game.play();
    }
    game.won() ? console.log(game.winner()+' Won!!!') : console.log('No Winner');
    reader.close();
    process.exit(0);
})



