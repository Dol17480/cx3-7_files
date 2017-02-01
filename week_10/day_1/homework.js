//Section 1

//what types are these? Write your answer in a comment beside it.

1; number
"cat"; string
true; boolean
[]; object
{}; object
1.1; number
undefined; undefined

//Section 2

// what is the truthy/falsiness values of the following
// write your answer in a comment beside it
// you can use an if to test this...
1; //true
"cat"; true
true; true
NaN; false
[]; true
{}; true
undefined; false
""; true
0; true


//Section 3

//Using examples that are different from above...

//3.1 Assign a variable that is a number
var x = 1;
//3.2 Assign a variable that is a string
var s = "String";
//3.3 Assign a variable that is a boolean
var b = false;
//3.4 Assign a variable that is an object
var s = {a:2};

//Section 4
//4.1 Write a statement that writes "hello" to the console if it's true and "bye" if it is false
if (its){
console.log("Hello");
}else{
  console.log("Goodbye")
}

var shouldSayHello = true;
if( shouldSayHello ){
  console.log( "hello" );
}
else()

//Section 5
var animals = ["raccoon","hedgehog","mouse","gerbil"];

//5.1. Assign the first element to a variable
var firstElement = animals[0];
//5.2. Assign the last element to a variable
var lastElement = animals[3];
var last = animals[ animals.length -1 ]
//5.3. Assign the length of an array to a variable
var a = animals.length;
//5.4. Add an item to the end of the array
animals.push("rat");
//5.5. Add an item to the start of the array
animals.unshift("squirrel");
//5.6. Assign the index of hedgehog to a variable
var index = animals.indexOf("hedgehog");


//Section 6

//6.1 Create an array of 5 vegetables
var vegetables = ["carrot", "potato", "pea", "turnip", "leek"];

//6.2 Loop over the array and write to the console using a "while
var vegetables = ["carrot", "potato", "pea", "turnip", "leek"];

var i = 0;
var text = "";

while (i < vegetables.length) {
    text += vegetables[i] + " " ;
    i++;
}
console.log(text);

var counter = 0;
while(counter < vegetables.length){
  console.log( vegetables[counter]);
  counter ++;
}

//6.3 Loop again using a "for" with a counte
for( var j=0; j<vegetables.length;j++){
  console.log(vegetables[j]);
}

//6.4 Loop again using a "for of"
for( var v of vegetables){
  console.log(v);
}

//Section 7
var accounts = [
  { name: 'jay',
    amount: 125.50,
    type: 'personal'
  },
  { name: 'val',
    amount: 55125.10,
    type: 'business'
  },
  { name: 'marc',
    amount: 400.00,
    type: 'personal'
  },
  { name: 'keith',
    amount: 220.25,
    type: 'business'
  },
  { name: 'rick',
    amount: 1.00,
    type: 'personal'
  },
];
//7.1 Calculate the total cash in accounts
var total = 0;
for (var account of accounts) {
  total += account.amount;
}

//7.2 Find the amount of money in the account with the largest balance
function findHighestAmount () {
  var highestAmount = accounts[0].amount;
for (var account of accounts){
  if(highestAmount < account.amount) {
    highestAmount = account.amount;
  }
}
return highestAmount;
}

function findHighestAmount2 () {
  var monies = [];
  for(var account of accounts){
    monies.push( account.amount );
  }
  var maximum = Math.max.apply(null, monies);
  return maximum;
}

//7.3 Find the name of the account with the smallest balance
var min = 999999;
var poorest = "";
for( var key in accounts ){
  if(min > accounts[key].amount){
    min = accounts[key].amount;
    poorest = accounts[key].name;
  }
}
console.log(poorest);

//7.4 Calculate the average bank account value
var averageValue = function( list ){
  return sumValue( list ) / list.length;
}

//7.5 Find the value of marcs bank account
for( var account of accounts){
  if(account.name === "marc"){
    var marcAccountAmount = account.amount;
  }
}

//7.6 Find the holder of the largest bank account
var largestValue = 0;
var accountName = "";
for( var account of accounts ){
  if(largestValue < account.amount){
    largestValue = account.amount;
    accountName = account.name;
  }
}
console.log("accountName", accountName);


//7.7 Calculate the total cash in business accounts
var businessTotal = 0;
for( var account of accounts){
  if(account.type === "business"){
    businessTotal += account.amount;
  }
}

//7.8 Find the largest personal account owner
function findHolderOfPersonalAmount (){
  var highestAmountPersonal = 0;
  var winner = null;
  for( var account of accounts){
    if(account.type === "personal" && highestAmountPersonal < account.amount){
      highestAmountPersonal = account.amount;
      winner = account;
    }
  }
 return winner.name;
}

//Section 8
//Assign a variable myPerson to a hash, giving them a name, height, favourite food and an eat method
var myPerson = {
 name: "David",
 height: 6.1,
 food: 'burritos'
 eat: function() { 
  return this.name + " is eating" + this.food
 }
}
console.log( myPerson.eat());












