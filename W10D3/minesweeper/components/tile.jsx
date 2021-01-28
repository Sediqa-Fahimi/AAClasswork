import React from 'react';

class Tile extends React.Component {
    constructor(props){
      super(props);
      this.handleClick = this.handleClick.bind(this);
    }


    handleClick(e){
      e.preventDefault();
      let altKeyPressed = e.altKey;
      console.log("altKey: " + altKeyPressed);
      this.props.updateGame(this.props.tile, altKeyPressed);
    }
    
    render(){
        // debugger
        let logo;
        if(this.props.tile.explored){
           //if adjacent bombs > 0, show adjacent bombs num 
           //else show empty string  
        } else if (this.props.tile.bombed){
          logo = "\u{1F4A3}";
            // show bomb logo 
        } else if (this.props.tile.flagged){ //unexplored block
          logo = "\u{1f6A9}";
          //show flag logo flagged ? show flag logo : blank
        } //end unexplored block
        return (
            <>
                <div className={`tile ${this.props.tile.explored ? "explored" : "unexplored"}
                  ${this.props.tile.flagged ? "flagged" : ""}
                  ${this.props.tile.bombed ? "bombed" : ""}`}
                  onClick = {this.handleClick}
                  >
                    {logo} 
                  </div>
            </>
        )
    }
}

export default Tile;

// this.bombed = false;
// this.explored = false;
// this.flagged = false;


