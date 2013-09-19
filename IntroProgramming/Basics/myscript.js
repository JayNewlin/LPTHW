// Do a couple of console.log messages
console.log("Hello from myscript.js");
console.log("Hello again!"); // This is not needed


/*
var name = prompt("What is your name?");
alert("Hello, " + name);

name = "Fred";
console.log("The user's name is " + name);
*/

/*
console.log("Before");

var name = prompt("What is your name?");

if (name) {
  console.log("If block");
} else {
  console.log("Else block");
}

console.log("After");
*/

/*
console.log("Before");
var counter = 10;

while (counter) {
  console.log("Hello world!");
  counter = counter - 1;
}

while (prompt("What is your name?")) {
  console.log("Got your name");
}
console.log("After");
*/

/*
console.log("Before");
for (var counter = 10; counter; counter = counter - 1) {
  console.log("Hello world", counter);
}

console.log("After");
*/

/*
var friends = ["Nick", "Michael", "Amit", "Allison", "John", "Rich"];
console.log("These are my friends:", friends);
console.log("I have", friends.length, "friends.");

var friendNumber = 1;
console.log("My friend at position", friendNumber, "is", friends[friendNumber]);

for (var i = 0; i < friends.length; i+=1) {
  console.log(friends[i]);
};
*/

/*
var me = {
  first_name: "Jay",
  last_name: "Newlin",
  "Employee Number": 1
};

console.log(me.first_name);
console.log(me.last_name);
console.log(me["Employee Number"]);
console.log(me);

var key = "last_name";
console.log(me[key]);

me.first_name = "Jay R.";
console.log(me.first_name);
*/

var sayHello = function () {
  var message = "Hello";
  message = message + " World!";
  console.log(message);
}

var debug = function (message) {
  console.log("Debug:", message);
}

var doubleNumber = function (num) {
  return num * 2;
}

debug(doubleNumber(7));

sayHello();

var x = 1;
debug("x has been set");

sayHello();

x += 10;
var y = 100;
debug("x has been increased. y has been set");

sayHello();



