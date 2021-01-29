import React from 'react';
import TodoListItem from './todo_list_item';

const TodoList = (props) => {
    return (
        <div>
            <h1>All of your Todos:</h1>
            <ul>
                {props.todos.map(todo=>{
                    // return <li key={todo.id}>Todo: {todo.title}</li>
                  return (
                    <TodoListItem todo={todo} key={todo.id}/>
                  )
                })}
            </ul>
        </div>
    )
}
export default TodoList;