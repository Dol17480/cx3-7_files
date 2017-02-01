console.log("first log");

var init = function(){
  var tag = document.getElementById('intro');
  tag.innerHTML = "Hackzzzzzzors!";
  console.log("second log");
}

console.log("third log");


window.onload = init;