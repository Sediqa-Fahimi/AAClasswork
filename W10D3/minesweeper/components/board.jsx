import React from 'react';
import Tile from './tile';

class Board extends React.Component{
    constructor(props){
      super(props)
        // this.gridSize = gridSize;
        // this.grid = [];
        // this.numBombs = numBombs;
        // this.generateBoard();
        // this.plantBombs();
    }
    render(){
 
      const rows = this.props.board.grid.map((row,idx) => {
        return (
          // console.log("inside board row generator return: " + row, idx)
          <div className="row">
           { row.map(t => {
              return (
                <>
                  {idx}
                  <Tile />
                </>
              )
            })
          }
          </div>
        )
      });
      return(
          <div className="game-board">
              {
                rows 
              }
          </div>
        );
    }
}

export default Board;

// constructor(gridSize, numBombs) {
//     this.gridSize = gridSize;
//     this.grid = [];
//     this.numBombs = numBombs;
//     this.generateBoard();
//     this.plantBombs();
// }