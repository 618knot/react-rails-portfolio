// Entry point for the build script in your package.json
import React from 'react';
import { createRoot } from 'react-dom/client';

import { Hoge } from './hoge'

function App() {
  return (
    <h1>Hello React!(root)</h1>
  )
}



const root = document.getElementById('root');
if (!root) {
  throw new Error('No root element');
}
createRoot(root).render(
  <React.StrictMode>
    <App />
    <Hoge />
  </React.StrictMode>
);