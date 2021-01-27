import React from 'react';

class Tile extends React.Component {
    constructor(props){
      super(props);
    }


    render(){
        // debugger
        let explored;
        if(!this.props.tile.explored){
            explored = "unexplored";
        }else{
            explored = "explored";
        }
        return (
            <>
                <div className={`tile ${this.props.tile.explored ? "explored" : "unexplored"}`} ></div>
            </>
        )
    }
}

export default Tile;

// this.bombed = false;
// this.explored = false;
// this.flagged = false;


