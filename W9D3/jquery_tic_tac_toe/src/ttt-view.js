const Game = require("../tic_tac_toe_node_solution/game");
const moveError = require("./../tic_tac_toe_node_solution/moveError");

class View {
  constructor(game, $el) {
    this.game = game;
    this.setupBoard();
    this.bindEvents();

  }

  bindEvents() {
    $('li').on('click', (e) => {
      let pos = $(e.target).data('pos');
      if (!this.game.board.isEmptyPos(pos)) {
        alert("Already taken!");
      } else {
        this.makeMove($(e.target));
      }
    })
  }

  makeMove($square) {
    let pos = $square.data('pos');
    this.game.playMove(pos);
    $square.text(this.game.currentPlayer);
    $square.addClass('played');
    if(this.game.isOver()){
      this.endGame();
    }
  }
  endGame(){
    const $p = $("<p class='win'></p>");
    $('.grid').append($p);
    $p.text(`Congratulations Player ${this.game.currentPlayer} you won!`);
    
  }

  setupBoard() {
    const $ul = $("<ul class='grid'></ul>");
    $('.ttt').append($ul);
    const $li = $("<li></li>");
    $('.grid').append($li); 
    const $li2 = $("<li></li>");
    $('.grid').append($li2);
    const $li3 = $("<li></li>");
    $('.grid').append($li3);
    const $li4 = $("<li></li>");
    $('.grid').append($li4);
    const $li5 = $("<li></li>");
    $('.grid').append($li5);
    const $li6 = $("<li></li>");
    $('.grid').append($li6);
    const $li7 = $("<li></li>");
    $('.grid').append($li7);
    const $li8 = $("<li></li>");
    $('.grid').append($li8);
    const $li9 = $("<li></li>");
    $('.grid').append($li9);
    
    $li.data('pos', [0, 0]);
    $li2.data('pos', [0, 1]);
    $li3.data('pos', [0, 2]);
    $li4.data('pos', [1, 0]);
    $li5.data('pos', [1, 1]);
    $li6.data('pos', [1, 2]);
    $li7.data('pos', [2, 0]);
    $li8.data('pos', [2, 1]);
    $li9.data('pos', [2, 2]);
    

  }
}

module.exports = View;
