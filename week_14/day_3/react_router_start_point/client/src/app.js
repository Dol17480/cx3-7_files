import React from 'react'
import ReactDOM from 'react-dom'
import Main from './components/Main.jsx'
import About from './components/About.jsx'
import Home from './components/Home.jsx'
import Pricing from './components/Pricing.jsx'
import {Router, Route, IndexRoute, hashHistory} from 'react-router'

window.onload = () => {
  ReactDOM.render(
    <Router history={hashHistory}>
    <Route path='/' component={Main}>
    <IndexRoute component={Home} />
    <Route path="home" component={Home} />
    <Route path="about" component={About} />
    <Route path="pricing" component={Pricing} />
    </Route>
    </Router>,
    document.getElementById('app')
    );
}


// var React = require('react');
// var ReactDOM = require('react-dom');
// var Main = require('./components/Main.jsx');

// window.onload = function(){
//   ReactDOM.render(
//     <Main></Main>,
//     document.getElementById('app')
//   );
// }
