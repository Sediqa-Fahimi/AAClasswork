// O(n^2) T | O(N) S
function threeNumberSum(array, targetSum) {
	array.sort((a,b) => a-b);
    const results = [];
	for(let i = 0; i < array.length - 2; i++){
		let firstNum = i+1;
		let lastNum = array.length-1;
		while(firstNum < lastNum){
			const currentSum = array[i] + array[firstNum] + array[lastNum];
			if(currentSum === targetSum){
				results.push([array[i], array[firstNum], array[lastNum]]);
				firstNum++;
				lastNum--;
			}else if(currentSum > targetSum){
				lastNum--;
			}else if(currentSum < targetSum){
				firstNum++;
			}
		}
	}
	return results;
}