// var name = "Jay";

// var talk = function(){
//   var name = "Rick";
//   console.log( "My name is " + name);
// }

// talk();
// console.log( "Global name is " + name);

var greet = function( isHappy ) {
  var text = "";
  if( isHappy ) {
    text = "Hello my friend";
  }else{
    text = "Go away";
  }
  var displayText = function() {
    console.log( text );
  }
displayText();
};

greet( true );