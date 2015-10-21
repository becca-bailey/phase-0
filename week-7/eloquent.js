// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var coffee = "hot";
if (coffee === "hot") {
	console.log("Mmmmm coffee...");
} else {
	console.log("Stop getting distracted and drink your coffee.");
}

// Favorite Food

// var favoriteFood = prompt("What is your favorite food?");
// alert("Hey, that's my favorite food, too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

function fizzBuzz() {
	for (var n = 1; n <= 100; n ++)
		if (n % 3 === 0 && n % 5 === 0) {
			console.log("FizzBuzz");
		}
		else if (n % 3 === 0) {
			console.log("Fizz");
		}
		else if (n % 5 === 0) {
			console.log("Buzz");
		}
		else {
			console.log(n);
		}
}

fizzBuzz();


// Functions

// Complete the `minimum` exercise.

function minimum(number1, number2) {
	if (number1 < number2) {
		return number1;
	} else if (number2 < number1) {
		return number2;
	} else {
		return "They are the same.";
	}
}

console.log(minimum(5, 10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Becca Nelson",
	age: 27,
	favoriteFoods: ["Pizza", "Risotto", "Chicken Tikka Masala"],
	quirk: "I eat fruit loops one color at a time."
}



