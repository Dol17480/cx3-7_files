var Fish = function(name, colour){
  this.name = name;
  this.colour = colour;
  // this.swim = function(){
  //   console.log("splash splash" + this.name);}
};

Fish.prototype = {
  swim: function(){
    console.log("splash splash " + this.name);
  }
}


var myFish = new Fish("Nemo", "Blue/Orange");
myFish.swim();
console.log( Object.getPrototypeOf( myFish ))



// var wisePerson = {
//   wisdom: function(){
//     console.log( "commit often" );
//   }
// };

// var myPerson = Object.create( wisePerson );
// myPerson.walk = function(){ console.log("Left right left right")};

// myPerson.walk();

// myPerson.wisdom();