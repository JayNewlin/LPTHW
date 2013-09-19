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

var friends = ["Nick", "Michael", "Amit", "Allison", "John", "Rich"];
console.log("These are my friends:", friends);
console.log("I have", friends.length, "friends.");

var friendNumber = 1;
console.log("My friend at position", friendNumber, "is", friends[friendNumber]);

for (var i = 0; i < friends.length; i+=1) {
  console.log(friends[i]);
};
