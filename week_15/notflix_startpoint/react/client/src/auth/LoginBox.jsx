import React from 'react'
const SignIn = require('./SignIn')
const SignUp = require('./SignUp')
const SignOut = require('./SignOut')

const LoginBox = React.createClass({

  getInitialState: function(){
    return {currentUser: null}
  },

  setUser: function(user){
    this.setState({currentUser: user})
  },

  fetchUser: function (){
    const request = new XMLHttpRequest();
    const url = this.props.url + 'users.json';
    request.open('GET', url);
    request.setRequestHeader('Content-Type', 'application/json')
    request.withCredentials = true
    request.onload = () => {
     if(request.status === 200){
      const receivedUser = JSON.parse(request.responseText)
      this.setUser(receivedUser)
    }else if(request.status === 401){
      this.setUser(false)
    }
  }
  request.send()
},

componentDidMount: function(){
  this.fetchUser()
},

render (){
  let mainDiv = 
  <div>
    <h4>Please sign in/up</h4>
    <SignIn url={this.props.url + "users/sign_in.json"} onSignIn={this.setUser}/>
    <SignUp url={this.props.url + "users.json"} onSignUp={this.setUser}/>
  </div>

  if(this.state.currentUser){
    mainDiv = <div>
      <h4>Welcome {this.state.currentUser.email}</h4>
      <SignOut url={this.props.url + "users/sign_out.json"}
      onSignOut={this.setUser}/>
      </div>
  }
  console.log(mainDiv)
  return (
   <div>
   { mainDiv }
   </div>
   )
}


})

module.exports = LoginBox