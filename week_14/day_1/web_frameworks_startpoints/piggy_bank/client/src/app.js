var React = require('react');
var ReactDOM = require('react-dom');
var PiggyBank = require('./components/PiggyBank.jsx');

window.onload = function(){
  ReactDOM.render(
    <PiggyBank title="Beth's piggy bank"colour="red"owner="David"/>,
    document.getElementById('app')
  );
}
