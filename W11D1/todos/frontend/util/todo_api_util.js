import { $CombinedState } from 'redux';

export const fetchTodos = ()=>{
    return $.ajax({
        method: 'GET',
        url: '/api/todos'
    })
} //tested succesffully in browser with fetchTodos().then(res=>console.log(res))
