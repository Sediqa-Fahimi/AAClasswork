import React from 'react';
import ReactDOM from 'react-dom';
import {login, logout, signup} from './util/session_api_util';
import configureStore from './store/store';

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("root");
    ReactDOM.render(<h1>Welcome To BenchBNB</h1>, root);
    window.login = login;
    window.signup = signup;
    window.logout = logout;
    const store = configureStore();
    window.getState = store.getState; 
    window.dispatch = store.dispatch; 
});

