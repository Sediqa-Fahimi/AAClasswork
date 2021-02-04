import React from 'react';
import { Link } from "react-router-dom";

export const PokemonIndexItem = ({pokemon})=>{
    return (
                <>
                    <li className="pokemon-index-item" key={pokemon.id}>
                        <Link to={`/pokemon/:${pokemon.id}`}>
                            <span>{pokemon.name}</span>
                            <img src={pokemon.imageUrl} />
                        </Link>
                    </li>
                </>

            )
        
}