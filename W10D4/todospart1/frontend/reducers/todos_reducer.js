import { RECEIVE_TODOS, RECEIVE_TODO, REMOVE_TODO} from './../actions/todo_actions';

// const initialState = {
//     1: {
//         id: 1,
//         title: "wash car",
//         body: "with soap",
//         done: false
//     },
//     2: {
//         id: 2,
//         title: "wash dog",
//         body: "with shampoo",
//         done: true
//     }
// };

// const initialState = {
//   // todos: {
//     1: {
//       id: 1,
//       title: 'take a shower',
//       body: 'and be clean',
//       done: false
//     }
//   // }
//   // },
//   // steps: {
//   //   1: { // this is the step with id = 1
//   //     id: 1,
//   //     title: 'walk to store',
//   //     done: false,
//   //     todo_id: 1
//   //   },
//   //   2: { // this is the step with id = 2
//   //     id: 2,
//   //     title: 'buy soap',
//   //     done: false,
//   //     todo_id: 1
//   //   }
//   // }
// };


const todosReducer = (state = {},action)=>{
    console.log("We are in todos reducer");

    Object.freeze(state);
    const nextState = Object.assign({},state);
    // debugger
    switch (action.type){
        case RECEIVE_TODOS:
            const newState = {}

            action.todos.forEach(obj=>{
                // nextState[obj.id] = obj;
                newState[obj.id] = obj;
            })
            return newState;
        case RECEIVE_TODO:
            nextState[action.todo.id] = action.todo;
            return nextState;
        case REMOVE_TODO:
            const idx = action.todo.id;
            if (idx){
                delete nextState[idx];
                return nextState;
            }
            else{
                //do you error function here
                return nextState;
            }
            
        default:
            return state;
    }
}
export default todosReducer;