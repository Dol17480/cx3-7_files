var myBear = {
  type: "Grizzly",
  name: "Wojtek",
  belly: [],
  eat: function (food) {
    this.belly.push(food);
    console.log("My name is " + this.name + " and once again I'm eating " + food);
  },
  vomit: function(){
    this.belly = [];
  }
};

myBear.eat("salmon");
myBear.eat("crisps");
myBear.vomit();
console.log( myBear.belly );
