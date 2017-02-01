var React = require('react');
var PiggyBank = React.createClass({

  getInitialState: function(){
    return  { 
      depositAmount: 1,
      total: 0 }
  },

  propTypes:{
    title: React.PropTypes.string.isRequired,
    colour: React.PropTypes.string.isRequired,
    owner: React.PropTypes.string.isRequired,

  },

  addToSavings: function(){
    this.setState({
      total: this.state.total + this.state.depositAmount

    })
  },

  takeFromSavings: function(){
    this.setState({
      total: this.state.total - this.state.depositAmount
    })
  },

  updateDepositAmount: function(event) {
     this.setState({
       depositAmount: Number(event.target.value)
     })
   },

  render: function(){
    return (
      <div className="bank-box">
        <h1> {this.props.title} {this.props.colour} belongs to {this.props.owner} </h1>
        <p>Total savings: { this.state.total }</p>
        <button onClick={this.addToSavings}>Deposit added!</button>
        <button onClick={this.takeFromSavings}>Deposit deducted!</button>
        <input value={this.state.depositAmount} onChange={this.updateDepositAmount}/>

      </div>

      );
  }
});

module.exports = PiggyBank;