var thingWeWantToHappenLater = function(){
  console.log("I waited to run");
};

var anotherThingWeWantToHappenLater = function(){
  console.log("I also waited");
};

setTimeout(thingWeWantToHappenLater, 2000)
setTimeout(anotherThingWeWantToHappenLater, 1000)
console.log ("A log at the bottom of the file");




// var myFunction = function( aFunction ){
//   aFunction( 99 );
// }

// var anotherFunction = function( number ){
//   console.log( number );
// };

// myFunction( anotherFunction );