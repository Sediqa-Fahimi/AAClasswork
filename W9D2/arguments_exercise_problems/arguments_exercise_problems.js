// function sum() {
//   // let arr = [...arguments];
//   let args = Array.prototype.slice.call(arguments);
//   let sum = 0;
//   args.forEach(num => {
//     sum += num;
//   })
//   return sum;
// }

// function sum(...args) {
//   let sum = 0;
//   args.forEach((num) => {
//     sum += num;
//   });
//   return sum;
// }

// console.log(sum(1, 2, 3, 4) === 10);
// console.log(sum(1, 2, 3, 4, 5) === 15);

/////////////////////////////////////////////////////////////////////////////
class Cat {
  constructor(name) {
    this.name = name;
  }

  says(sound, person) {
    console.log(`${this.name} says ${sound} to ${person}!`);
    return true;
  }
}

class Dog {
  constructor(name) {
    this.name = name;
  }
}

Function.prototype.myBind = function () {
  let args = [...arguments];
  let that = this;
  return function(){
    let rest = [...arguments];
    that.call(...args,...rest);
  }
};

Function.prototype.myBind = function (...args) {
  let that = this;
  return function(...rest){
    that.call(...args,...rest);
  }
};

const markov = new Cat("Markov");
const pavlov = new Dog("Pavlov");

// markov.says("meow", "Ned");
// Markov says meow to Ned!
// true

// bind time args are "meow" and "Kush", no call time args
// markov.says.myBind(pavlov, "meow", "Kush")();
// Pavlov says meow to Kush!
// true

// no bind time args (other than context), call time args are "meow" and "a tree"
// markov.says.myBind(pavlov)("meow", "a tree");
// Pavlov says meow to a tree!
// true

// bind time arg is "meow", call time arg is "Markov"
// markov.says.myBind(pavlov, "meow")("Markov");
// Pavlov says meow to Markov!
// true

// no bind time args (other than context), call time args are "meow" and "me"
// const notMarkovSays = markov.says.myBind(pavlov);
// notMarkovSays("meow", "me");
// Pavlov says meow to me!
// true

//////////////////////////////////////////////////////////////////////////////

function curriedSum(numArgs){
  const numbers = [];
  function _curriedSum(num){
    numbers.push(num);
    if (numbers.length === numArgs){
      let count = 0;
      numbers.forEach((el)=> count += el);
      return count;
    } else {
      return _curriedSum;
    }
  }
  return _curriedSum;
}

// const sum = curriedSum(4);
// console.log(sum(5)(30)(20)(1)); // => 56

//////////////////////////////////////////////////////////////////////////

Function.prototype.curry= function(numArgs){
  let arr = [];
  let that = this;
  function _curried(num){
    arr.push(num);
    if (arr.length === numArgs){
      return that.call(null,...arr);
    } else {
      return _curried;
    }
  }
  return _curried;
};

function print(...names){
  console.log(names);
  for(let i=0; i<names.length;i++){
    console.log(names[i]);
  }
}

print.curry(3)("Jake")("Ali")("Jacob");

