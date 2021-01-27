import React from 'react';
import Tile from './tile';
import * as Minesweeper from './../minesweeper';

class Board extends React.Component{
    constructor(props){
      super(props)
    }


    render(){
      
      const rows = this.props.board.grid.map((row,idx) => {
        return (
          // console.log("inside board row generator return: " + row, idx)
          <div className="row" key={idx}>
           { row.map((tile,i) => {
              return (
                <>
                  <Tile key={i} 
                        tile={tile} 
                        updateGame={this.props.updateGame}/>
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