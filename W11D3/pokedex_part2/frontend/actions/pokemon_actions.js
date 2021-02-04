import * as APIUtil from '../util/api_util';

export const RECEIVE_ALL_POKEMON = "RECEIVE_ALL_POKEMON";
export const RECEIVE_POKEMON = "RECEIVE_POKEMON";

export const receiveAllPokemon = (pokemon) => ({
  type: RECEIVE_ALL_POKEMON,
  pokemon
})
// thunk action creator
export const requestAllPokemon = () => (dispatch) => (
  APIUtil.fetchAllPokemon()
    .then(pokemon => dispatch(receiveAllPokemon(pokemon)))
)

export const receiveSinglePokemon = (payload) => ({
  type: RECEIVE_POKEMON,
  payload
})
// thunk action creator
export const requestSinglePokemon = (id) => (dispatch) => (
  APIUtil.fetchPokemon(id)
    .then(payload => dispatch(receiveSinglePokemon(payload)))
)

