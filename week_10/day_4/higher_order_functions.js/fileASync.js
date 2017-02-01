var fs = require("fs");

fs.readFile("animals.txt", function(err, data){
  if(err){
    console.log("ERROR", err)
    return;
  }
  else{
    var bufferString = data.toString();
    console.log('bufferString: ' );
    console.log(bufferString);
    var numberOfAnimals = bufferString.split("\n").length - 1;
    console.log("There are " + numberOfAnimals + " animals");
  }
});