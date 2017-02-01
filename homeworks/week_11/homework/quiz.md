# Quiz

1. What does DOM stand for?
Document Object Model

2. What is the name of the object we can use to get information about the browser enviroment?
Window

3. What is the name of the object that we can use to get access to the DOM representation of the page?
Document

4. What type of files might we see in the Network tab for in Chrome devTools?
JS
CSS

5. What version of HTML is document.querySelector from?
HTML DOM/5

6. Which event do we hook into when we want to know the DOM has loaded, window.onload or document.onload?
Window.onlaod

7. We use window.createElement to make new DOM elements, true or false?
True

8. List two ways to get all the elements by class 'cat'

 var cats = document.getElementsByClassName('cat');
 var allCats = document.querySelector('.cat');

9. List two ways to retrieve the element with id "goat"

var goats = document.getElementsById('goat')
var allQuotes = document.querySelector('.goat');

10. List two ways to get all the li elements

var cites = document.getElementsByTagName('li');
var li = document.querySelector('.li');

11. List two ways to get the first li element
for (var i = li.length - 1; i >= 0; i--) {
//   console.log(li[i]);
// }

querySelectorAll ('li');

12. How can we set the a given element to be hidden?
li[0].style.visibility = 'hidden'; blank but leaves space
styl.display = 'none'; removes it comepletely
