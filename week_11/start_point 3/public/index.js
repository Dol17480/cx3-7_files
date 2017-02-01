var setSpanText = function(text){
  var span = document.querySelector('#fav-food')
  span.innerText = text;
}

var handleButtonClick = function(){
  var input = document.querySelector('input');
  setSpanText(input.value);
  localStorage.selection = input.value;
  input.value = "";
};

var app = function(){
  var button = document.querySelector('button');
  button.onclick = handleButtonClick;
  var saved = localStorage.selection;
  setSpanText(saved);
}

window.onload = app;
