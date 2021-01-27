import React from 'react';
import ReactDOM from 'react-dom';
import Game from './game';

document.addEventListener('DOMContentLoaded', () => {
  const reactRoot = document.getElementById('root');
  // ReactDOM.render(<h1>Our first piece of React!!!!!!!</h1>,reactRoot);
  ReactDOM.render(<Game />, reactRoot);
});


