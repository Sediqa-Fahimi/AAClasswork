import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
// import { receiveTodo, receiveTodos, removeTodo} from './actions/todo_actions';
import { receiveStep, receiveSteps, removeStep } from './actions/step_actions';

import * as TodoActions from './actions/todo_actions'; 
import Root from './components/root';

document.addEventListener('DOMContentLoaded',()=>{
    const root = document.getElementById('root');
    const store = configureStore();
    ReactDOM.render(<Root store={store}/>, root);
    window.store = store;
    // window.receiveTodo = receiveTodo;
    // window.receiveTodos = receiveTodos;
    // window.removeTodo = removeTodo;
    window.TodoActions = TodoActions;     //same as above 3 lines
    window.receiveStep = receiveStep;
    window.receiveSteps = receiveSteps;
    window.removeStep = removeStep;
})

console.log("Webpack is running");


