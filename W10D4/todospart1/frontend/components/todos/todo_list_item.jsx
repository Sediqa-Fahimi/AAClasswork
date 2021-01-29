import React from 'react';

const TodoListItem = ({todo}) => {
  return (
    <li key={todo.id}>
      Todo: {todo.title} {todo.body}
    </li>
  )
}

export default TodoListItem;