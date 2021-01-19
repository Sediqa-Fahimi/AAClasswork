// Function.prototype.inherits = function(superClass) {
//   function Surrogate() {};
//   Surrogate.prototype = superClass.prototype;
//   this.prototype = new Surrogate();
//   this.prototype.constructor = this;
// }

Function.prototype.inherits = function(superClass){
  this.prototype = Object.create(superClass.prototype);
  this.prototype.constructor = this;
}


function MovingObject(title) {
    this.title = title;
}

MovingObject.prototype.makeMove = function () {
  console.log(`${this.title} is moving, ${this.size}`);
}

function Ship(title, size) {
  // MovingObject.call(this, title);
  this.title = title;
  this.size = size
}

Ship.inherits(MovingObject);

let myShip = new Ship("my ship", 23);
myShip.makeMove();

function Asteroid(title, size) {
  this.title = title;
  this.size = size;
}
Asteroid.inherits(MovingObject);
let myAst = new Asteroid("my Ast", 70);
myAst.makeMove();