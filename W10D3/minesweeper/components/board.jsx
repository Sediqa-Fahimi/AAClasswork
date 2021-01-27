import React from 'react';

class Board extends React.Component{
    constructor(gridSize, numBombs){
        this.gridSize = gridSize;
        this.grid = [];
        this.numBombs = numBombs;
        this.generateBoard();
        this.plantBombs();
    }
    render(){
        return(

        );
    }
}


// constructor(gridSize, numBombs) {
//     this.gridSize = gridSize;
//     this.grid = [];
//     this.numBombs = numBombs;
//     this.generateBoard();
//     this.plantBombs();
// }