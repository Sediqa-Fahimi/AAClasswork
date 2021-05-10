const readline = require('readline');
const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

class Player{
    getmove(){
        reader.question('enter a position with coordinates separated with a space like `1 2`: ', numbers => {
            return numbers.split(' ').forEach(num => parseInt(num));
        });
    }

}
module.exports = Player;