import { RECEIVE_POKEMON } from './../actions/pokemon_actions';


const itemsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type){
    case RECEIVE_POKEMON:
        // return Object.assign({}, state, action.payload.items);
        // const nextState = Object.assign({}, state);
        // nextState[] = action.payload.items;
        // return nextState;
        const newTodo = { [action.todo.id]: action.todo };
        return merge({}, state, newTodo);
    default:
        return state;
    }
}
export default itemsReducer;