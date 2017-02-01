var fs = require('fs');

var buffer = fs.readFileSync("animals.txt");
var bufferString = buffer.toString();
// console.log("bufferString", bufferString);

var numberOfAnimals = bufferString.split("\n").length - 1;
console.log("There are " + numberOfAnimals + " animals");