// Do a couple of console.log messages
console.log("Hello from myscript.js");
console.log("Hello again!"); // This is not needed


/*
alert("Hello, " + name);

name = "Fred";
console.log("The user's name is " + name);
*/

console.log("Before");

var name = prompt("What is your name?");

if (name) {
  console.log("If block");
} else {
  console.log("Else block");
}

console.log("After");
