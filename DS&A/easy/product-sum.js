
function productSum(array, level = 1) {
	let sum = 0;
	for(const val of array){
		if(Array.isArray(val)){
			sum += productSum(val, level + 1);
		}else{
			sum += val;
		}
	}
    
	return sum * level;
}
console.log(productSum([5, 2, [7, -1], 3, [6, [-13, 8], 4]]));