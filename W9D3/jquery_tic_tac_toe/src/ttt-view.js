class View {
  constructor(game, $el) {
    this.setupBoard()

  }

  bindEvents() {}

  makeMove($square) {}

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
    

  }
}

module.exports = View;
