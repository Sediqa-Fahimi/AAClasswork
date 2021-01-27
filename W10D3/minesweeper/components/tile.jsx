import React from 'react';

class Tile extends React.Component {
    constructor(props){
      super(props);
      this.handleClick = this.handleClick.bind(this);
    }


    handleClick(e){
      this.props.tile.explored = true;
      let isFlagged = this.props.
      this.props.updateGame(this, );
      
    }

    render(){
        // debugger
        let explored;
        if(this.props.tile.explored){
           //if adjacent bombs > 0, show adjacent bombs num 
           //else show empty string  
        } else if (this.props.tile.bombed){
            // show bomb logo 
        }else{ //unexplored block
          //if flagged show flag logo flagged ? show flag logo : blank
        } //end unexplored block
        return (
            <>
                <div className={`tile ${this.props.tile.explored ? "explored" : "unexplored"}
                  ${this.props.tile.flagged ? "flagged" : ""}
                  ${this.props.tile.bombbed ? "bombed" : ""}`}
                  onClick = {this.handleClick}
                  ></div>
            </>
        )
    }
}

export default Tile;

// this.bombed = false;
// this.explored = false;
// this.flagged = false;


