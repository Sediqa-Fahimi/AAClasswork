// Array#myEach(callback)
Array.prototype.myEach = function(callback) {
  for (let i = 0; i < this.length; i++) {
    callback(this[i]);
  }
}; // no return value

const doubler = function(num) {
  return num * 2;
}
// console.log([1, 2, 3].myEach(doubler)) 


// Array#myMap(callback)
Array.prototype.myMap = function(cb) {
  let newArr = [];
  const innerFunction = function(ele){
    newArr.push(cb(ele));
  }
  this.myEach(innerFunction);
  return newArr;
};
// console.log([1, 2, 3].myMap(doubler)) 


// Array#myReduce(callback[, initialValue])
Array.prototype.myReduce = function(callback, num = 0) {
  this.myEach((el) => num = callback(num,el));
  return num;
}
// console.log([1,2,3].myReduce((acc, el) => acc + el));