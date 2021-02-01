import React from 'react';
import TodoListItem from './todo_list_item';
import TodoForm from './../todo_list/todo_form';

const TodoList = (props) => {
    return (
        <div>
            <h1>All of your Todos:</h1>
            <ul>
                {props.todos.map(todo=>{
                    // return <li key={todo.id}>Todo: {todo.title}</li>
                  return (
                    <TodoListItem removeTodo={props.removeTodo} receiveTodo={props.receiveTodo} todo={todo} key={todo.id}/>
                  )
                })}
            </ul>
            <TodoForm receiveTodo={props.receiveTodo}/>
        </div>
    )
}
export default TodoList;