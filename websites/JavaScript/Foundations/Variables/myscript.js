/* JavaScript Foundations: Variables */

// var color = "red";

// var myDiv = document.getElementById('myDiv');

// myDiv.style.background = "black";
// myDiv.style.color = "#FFFFFF";

// var myVar;

// if(myVar == null){
// 	console.log("If");
// } else {
// 	console.log("Else");
// }


// Scope

// var world = "World!";

// function sayHello () {
// 	var hello = "Hello ";

// 	function inner () {
// 		var extra = " There is more!"
// 		console.log(hello + world + extra);
// 	}

// 	inner();
// }

// sayHello();

// console.log("world outside sayHello(): ", world);
// console.log("hello outside sayHello(): ", hello);


// Shadowing

// var myColor = "blue";
// console.log("myColor before myFunc()", myColor);

// function myFunc() {
// 	var myColor = "yellow";
// 	myNumber = 42;
// 	console.log("myColor inside myFunc()", myColor);
// }

// myFunc();
// console.log("myColor after myFunc()", myColor);
// console.log("myNumber after myFunc()", myNumber);

// Hoisting
 function doSomething(doit) {
 	var color = "blue", number;
  	if(doit) {
 		color = "red";
 		number = 10;
 		console.log("Color in if(){}", color)
 	}
 	console.log("Color after if(){}", color)
 }

 doSomething(false);
 doSomething(true);
