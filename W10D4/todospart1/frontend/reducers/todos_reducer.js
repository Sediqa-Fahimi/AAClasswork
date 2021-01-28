import { RECEIVE_TODOS, RECEIVE_TODO} from './../actions/todo_actions';

const todosReducer = (state = {},action)=>{
    console.log("We are in todos reducer");

    Object.freeze(state);
    const nextState = Object.assign({},state);
    
    switch (action.type){
        case RECEIVE_TODOS:
            nextState[action.todos.id] = action.todos;
            return nextState;
        case RECEIVE_TODO:
            nextState[action.todo.id] = action.todo;
            return nextState;
        default:
            return state;
    }
}
export default todosReducer;