import React from 'react';

class Tile extends React.Component {
    constructor(board,pos){
        this.board = board;
        this.pos = pos;
    }
    render(){
        return (
            <>
                <div>"T"</div>
            </>
        )
    }
}

export default Tile;