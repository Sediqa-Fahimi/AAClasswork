import { RECEIVE_TODOS, RECEIVE_TODO, REMOVE_TODO} from './../actions/todo_actions';


const initialState = {
    1: {
        id: 1,
        title: "wash car",
        body: "with soap",
        done: false
    },
    2: {
        id: 2,
        title: "wash dog",
        body: "with shampoo",
        done: true
    }
};
const todosReducer = (state = initialState,action)=>{
    console.log("We are in todos reducer");

    Object.freeze(state);
    const nextState = Object.assign({},state);
    
    switch (action.type){
        case RECEIVE_TODOS:
            action.todos.forEach(obj=>{
                nextState[obj.id] = obj;
            })
            return nextState;
        case RECEIVE_TODO:
            nextState[action.todo.id] = action.todo;
            return nextState;
        case REMOVE_TODO:
            const idx = action.todo.id;
            delete nextState[idx];
            return nextState;
        default:
            return state;
    }
}
export default todosReducer;