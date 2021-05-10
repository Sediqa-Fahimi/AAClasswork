
class Board {
    constructor(n){
        this.size = n * n;
        this.grid = Array(n);
        for(let i = 0; i < this.grid.length; i++){
            this.grid[i] = Array(n).fill('N')
        }

    }
    size(){
        return this.size;
    }
    get(pos){
        return this.grid[pos[0]][pos[1]];
    }
    set(pos, value){
        this.grid[pos[0]][pos[1]] = value;
    }
    numShips(){
        let count = 0;
        for(let subArray of this.grid){
            for(let el of subArray){
                if(el === 'S') count++;
            }
        }
        return count;
    }
    attack(pos){
        const target = this.get(pos);
        if(target === 'S'){
            this.set(pos, 'H');
            console.log('You sunk my battleship!');
            return true;
        }else{
            this.set(pos, 'X');
            return false;
        }
    }
    placeRandomShips(){
        const totalShips = Math.ceil(this.size * 0.25);
        for(let i = 0; i < totalShips; i++){
            const row = Math.floor(Math.random() * this.grid.length);
            const col = Math.floor(Math.random() * this.grid.length);
            this.set([row, col]) = 'S';
        }
    }
}

module.exports = Board;