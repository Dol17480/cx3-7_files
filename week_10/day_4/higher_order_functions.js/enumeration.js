var testArray = [1,2,3,4];


var sum = testArray.reduce(function(acc, item){ return acc + item}, 0);
console.log("sum of testArray is ", sum);

// var doubledArray = testArray.map(function(item){
//   return item * 2;
// });

// console.log("doubled array", doubledArray);

// var ourForEach = function(array, callOnItem){
//   for( var item of array){
//     callOnItem( item );
//   }
// }

// ourForEach ( testArray, console.log );


// // testArray.forEach(function(item)
// //   { console.log("item", item)
// // })

// // for (var item of testArray) {
// //   console.log('item', item)
// // };