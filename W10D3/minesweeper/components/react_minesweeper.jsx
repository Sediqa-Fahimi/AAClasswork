import React from 'react';
import ReactDOM from 'react-dom';
import Game from './game';

document.addEventListener('DOMContentLoaded', () => {
  const reactRoot = document.getElementById('root');
  ReactDOM.render(<Game />, reactRoot);
});


