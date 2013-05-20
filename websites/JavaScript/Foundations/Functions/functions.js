// JavaScript Functions

// function sayHello (name, greeting) {
// 	if (typeof name === "undefined") {
// 		return;
// 	}
// 	if (typeof greeting === 'undefined') {
// 		greeting = "Hello,"
// 	}
// 	console.log(greeting + " " + name + "!");


// 	return name.length;
// 	console.log("End of function");
// }

// console.log(sayHello("Jay", "Hey there,"));

// console.log(sayHello("Fred"));

// console.log(sayHello());


// Scope

// var color = 'black',
// 	number = 1;

// function showColor () {
// 	var color = 'green',
// 		shape = "square";

// 	number = 2;

// 	console.log('showColor color', color);
// 	console.log('showColor number', number);
// 	console.log('showColor shape', shape);
// }

// showColor();

// console.log('Global color', color);
// console.log('Global number', number);
// console.log('Global shape', shape);


// Anonymous Functions

// var myFunction = function () {
// 	console.log('myFunction was called');
// }

// var callTwice = function (targetFunction) {
// 	targetFunction();
// 	targetFunction();
// }


// callTwice(function () {
// 	console.log("Hello from an anonymous function!")
// });

// (function () {
// 	var a, b, c;

// 	console.log("from anon function")

// }) (1, "hello")


// Examples of interacting with the page


var button = document.getElementById('action');
var input = document.getElementById('text_field');


button.addEventListener('click', function () {
	console.log('clicked');
});

button.addEventListener('click', function () {
	console.log('Other Click function');
	input.setAttribute('value', 'Hello World');
});






























