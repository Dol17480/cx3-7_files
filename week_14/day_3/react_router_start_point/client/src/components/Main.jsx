import React from 'react'
import About from './About.jsx'
import Home from './Home.jsx'
import Pricing from './Pricing.jsx'
import {Link} from 'react-router'

class Main extends React.Component {

  render () {
    return (
       <div>
       <h4>C7 Website</h4>
       <ul>
       <li><Link to='/home'>Home</Link></li>
       <li><Link to='/about'>About</Link></li>
       <li><Link to='/pricing'>Pricing</Link></li>
       </ul>
       {this.props.children}
       </div>
      )
  }
  }


export default Main;


//   gotoHome:function(e){
//     e.preventDefault();
//     this.setState( { page: '/home'});
//   },
//   gotoAbout:function(e){
//     e.preventDefault();
//     this.setState( { page: '/about'});
//   },
//   gotoPricing:function(e){
//     e.preventDefault();
//     this.setState( { page: '/pricing'});
//   },

//   render: function(){
//     var child
//     switch (this.state.page) {
//       case '/about': child = <About/>; break;
//       case '/pricing': child = <Pricing/>; break;
//       default:  child = <Home/>;
//     }

//     return(
//       <div>
//         <h4> Main App</h4>
//         <ul>
//           <li><a onClick = {this.gotoHome} href='' page="/home">Home</a></li>
//           <li><a onClick = {this.gotoAbout} href='' page="/about">About</a></li>
//           <li><a onClick = {this.gotoPricing} href='' page="/pricing">Pricing</a></li>
//         </ul>
//         {child}
//       </div>
//     )
//   }
// })

// module.exports = Main;
