var app = function(){
  var canvas = document.getElementById('main-canvas');
  console.log('canvas', canvas);
  var context = canvas.getContext("2d");
  console.log(context);

  context.fillStyle = ("green")
  context.fillRect(10, 10, 50, 50)
 

  context.beginPath();
  context.moveTo(100, 100);
  context.lineTo(100, 200);
  context.stroke();

  context.beginPath();
  context.moveTo(200, 200);
  context.lineTo(200, 300);
  context.lineTo(100, 300);
  context.closePath();
  context.fillStyle = 'dodgerblue';
  context.fill();


  // context.beginPath();
  //     context.arc(350,75,50,0,Math.PI*2,true); // Outer circle
  //     context.moveTo(110 350);
  //     context.arc(350,75,35,0,Math.PI,false);  // Mouth (clockwise)
  //     context.moveTo(65,350);
  //     context.arc(300,65,5,0,Math.PI*2,true);  // Left eye
  //     context.moveTo(95,300);
  //     context.arc(375,65,5,0,Math.PI*2,true);  // Right eye
  //     context.stroke();

  var drawCircle = function(x,y){
    context.beginPath();
    context.arc(x,y,50,0,Math.PI*2,true);
    context.stroke();
  }

canvas.onclick = function(event){
  drawCircle(event.layerX, event.layerY);
};

var img = document.createElement('img');
img.src = "http://www.codebearsoftware.com/BearCoding.jpg";

var drawBear = function(){
  context.drawImage(img, 300, 300, 100, 100);
}

img.onload = drawBear;

var changeColor = function(){
  context.strokeStyle = this.value;
}

var colorPicker = document.querySelector('#input-color');
colorPicker.onchange = changeColor;


}

window.onload = app;