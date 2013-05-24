// // JavaScript Objects

// var jay = {
// 	name: "Jay R",
// 	skills: ["Python", "UNIX Command Line", "Singing"],
// 	"favorite color": "blue",
// 	greet: function (name, mood) {
// 		name = name || "You";
// 		mood = mood || "good";

// 		console.log("Hello, " + name +
// 					". I am " + this.name +
// 					" and I am in a " + mood + " mood!");
// 	}
// };

// var nick = {
// 	name: "Nick",
// 	skills: ["HTML", "CSS", "Teaching"],
// 	"favorite color": "brown",
// 	greet: jay.greet
// };

// // console.log(jay.name);
// // console.log(jay["skills"]);
// // console.log(jay["favorite color"]);

// jay["greet"]("Alfred", "great");
// nick.greet();

// var jayGreet = jay.greet;
// jayGreet.call(nick);
// jayGreet.call({name: "Fred"}, "Matt", "not-so-good")

// jay.greet.call(nick);

// // function whatIsThis() {
// // 	console.log(this);
// // }

// // whatIsThis();

// jay.greet.apply(nick, ["Aloysius", "silly"]);

// var args = ["Michael", "happy"];
// jay.greet.apply(jay, args);

var personPrototype = {
	name: 'Anonymous',
	greet: function (name, mood) {
		name = name || "You";
		mood = mood || "good";

		console.log("Hello, " + name +
					". I am " + this.name +
					" and I am in a " + mood + " mood!");
	},

	species: 'Homo sapiens'
}

function Person (name) {
	this.name = name;
}

Person.prototype = personPrototype;

jay = new Person("Jay");
nick = new Person("Nick");
















