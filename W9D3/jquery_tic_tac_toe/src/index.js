const View = require("./ttt-view"); 
const Game = require("./../tic_tac_toe_node_solution/game");

  $(() => {
    const game = new Game();
    const $container = $('figure.ttt');
    new View(game, $container);
    
  });
