// function hello() {
//   console.log("hello everybody!");
// }

// // hello();

// function add(a,b) {
//   return a + b;
// }

// console.log("the return value is " + add(1,2));

// // function mood(name, mood) {
// //   console.log(name + " you are: " + mood);
// // }

// // mood("Alan", "chilled");

// function sum() {
//   var i = 0;
//   var total = 0;

//   for(i; i < arguments.length; i++) {
//     total += arguments[i];
//   }
//   return total;
// }

// console.log(sum(1,2,3,4));
// console.log(sum(2,4));

// var hello = function() {
//   console.log("Hello!");
// }

// hello();

// var add = function(a,b) {
//   return a + b;
// }
// console.log("the return value is " + add(1,2));

// function() {
//   console.log("hello");
// }


// var greater = function(a,b) {
//   if (a > b) {
//     return a;
//   }
//   else {
//     return b;
//   }
// }

// console.log(greater(1,8));

// var add = function(a,b) {
//   return a + b;
// }

// var wow = function(functionToInvoke) {
//   console.log( functionToInvoke(2,1));
// }
// wow(add);

function speak(name, surname) {
  // return name + surname;

console.log( "Howdy, I am " + name + " " + surname);
}

speak("Rick", "Henry");



function multiply(a, b) {
 return a * b;
}
console.log("the return value is " + multiply(2,8));


function firstArray( array ) {
  return array[0];
} 
console.log(firstArray([1,2,3,4]));


function namesArray( array ) {
 for (string of array) {
  console.log( string );
 }
}

var testArray = {
  "first",
  "second",
  "third",
  "fourth"
}



function addAnimalToFarm(animal, farmArray) {
  farmArray.push( animal );
  console.log("the animals in your farm are now");
  print(farmArray);
}

var animals = ["pig", "cow", "chicken"];
console.log( "Testing addAnimalToFarm ( animals): ");
addAnimalToFarm( "Goat", farmArray);





















