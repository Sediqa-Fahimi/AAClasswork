const readline = require('readline');
const reader = readline.createInterface( {
    input: process.stdin,
    output: process.stdout
} );

function addNumbers(sum, numsLeft, completionCallback) {
    if (numsLeft > 0) {
        reader.question("enter a number: ", function(num1) {
            const num = parseInt(num1);
            sum += num;
            console.log(`current sum ${sum}`);
            addNumbers(sum, numsLeft-1, completionCallback);
        })
    } else {
        completionCallback(sum);
    }
}

addNumbers(0, 3, sum => console.log(`Total Sum: ${sum}`));