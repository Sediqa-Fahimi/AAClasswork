import React from 'react';

const TodoList = (props) => {
    return (
        <div>
            <h1>All of your Todos:</h1>
            <ul>
                {props.todos.map(todo=>{
                    return <li>Todo: {todo.title}</li>
                })}
            </ul>
        </div>
    )
}
export default TodoList;