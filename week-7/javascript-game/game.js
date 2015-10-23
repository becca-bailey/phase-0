// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Create a simplified yahtzee game
// Goals: Create user choices that move numbers between two arrays and check for patterns in those numbers
// Characters: None
// Objects: Game object and check object
// Functions: Roll, keep, remove, menu, check

// Pseudocode
/* 

Create a game loop
	SET a variable to determine whether or not to continue
	WHILE continue is true
		Set keep array to empty
		CALL play function
		CALL check function

Create a game object
	
	CREATE a roll array
	CREATE a keep array
	SET continue to true

	DEFINE a roll function
		Roll array length is equal to 5 minus the keep array length
		EACH index in the roll array is equal to a random number between 1 and 5
		PRINT roll array
		PRINT keep array

	DEFINE a keep function
		User inputs number to keep
			ITERATE through roll array to check for match
			IF match is found
				ADD number to keep array
				SORT keep array
				PRINT keep array
			ELSE PRINT invalid input message

	DEFINE a remove function
		User inputs number to remove
		ITERATE through roll array to check for match
			IF match is found
				REMOVE number from keep array
				PRINT keep array

	DEFINE keep all function
		PUSH remaining values from roll array to keep array

	DEFINE menu function
		IF user input = r
			CALL roll function
		IF user input = k
			CALL keep function
		IF user input = q
			SET continue to false
		IF user input = rm
			CALL remove function

Create a check object
	Yahtzee function 
		IF all values in keep array are equal
		RETURN true
	Large straight function
		SET a counter equal to 0
		If each value in keep array is equal to the value before plus one
		ADD one to the counter
		IF counter is equal to four
			RETURN true
	Small straight function
		Create an empty array
		IF a value in keep array is equal to the value before plus one
		PUSH to new array
		if the length of the new array is 3
			RETURN true
	Full house function 
		Create a counter that counts instances of a number
		If one number has two instances and the other has three
		RETURN true
	four of a kind function
		Create a counter that counts instances of a number
		IF instances >= 4
		RETURN true
	three of a kind function
		Create a counter that counts instances of a number
		IF 	INSTANCES >= 3
		RETURN true

PRINT greeting and rules

Game loop

	roll
	REQUEST user input - roll or keep
	IF roll count = 3
		keep roll
		run all check functions
		IF function returns true
			PRINT function
	
*/
// Initial Code

//         var game = {
// rollArray: [],
// keepArray: [],
// continue: true,
// roll: function() {
// 	for (i = 0; i < 5 - game.keepArray.length; i++) {
// 		game.rollArray[i] = Math.floor((Math.random() * 6) + 1);
// 	}
// 	document.write("<br>You rolled: " + game.rollArray);
// },
// keep: function() {
// 	var keepValue = prompt("Which number would you like to keep?");
// 	for (i = 0; i < game.rollArray.length; i++) {
// 		if (parseInt(keepValue) === game.rollArray[i]) {
// 			game.keepArray.push(parseInt(keepValue));
// 			game.rollArray.splice(i, 1);
// 			break;
// 		}
// 	}
// 	game.keepArray.sort();
// 	document.write("<br>You are keeping: " + game.keepArray.sort());
// 	document.write("<br>You still have: " + game.rollArray);
// },
// keepAll: function() {
// 	for (i = 0; i < game.rollArray.length; i++) {
// 		game.keepArray.push(game.rollArray[i]);
// 	}
// 	game.keepArray.sort();
// 	document.write("<br>You have: " + game.keepArray.sort());
// },
// menu: function() {
// +
// 	var userChoice = prompt("Enter k to keep a number, r to roll again, or q to quit.");
// 	if (userChoice === "k") {
// 		game.keep();
// 		game.menu();
// 	} else if (userChoice === "r") {
// 		game.roll();
// 	} else if (userChoice === "q") {
// 		game.continue = false;
// 	} else {
// 		document.write("<br>Invalid input.  Please try again");
// 		game.menu();
// 	}
// },
// play: function() {
// 	game.roll();
// 	game.menu();
// 	game.menu();
// 	game.keepAll();
// }
// }
// 
// var check = {
// yahtzee: function() {
// 	var count = 0;
// 	for(i = 0; i < 4; i++ ) {
// 		if (game.keepArray[i] === game.keepArray[i+1]) {
// 			count++;
// 		}
// 	}
// 	if (count === 4) {
// 		document.write("<br>Yahtzee!");
// 		return true;
// 	}
// },
// largeStraight: function() {
// 	var count = 0;
// 	for(i = 0; i < 4; i++ ) {
// 		if (game.keepArray[i] + 1 === game.keepArray[i+1]) {
// 			count++;
// 		}
// 	}
// 	if (count === 4) {
// 		document.write("<br>Large straight!");
// 		return true;
// 	}
// },
// smallStraight: function() {
// 	var ssArray = [];
// 	for(i = 0; i < 4; i++ ) {
// 		if (game.keepArray[i] !== game.keepArray[i+1]) {
// 			ssArray.push(game.keepArray[i]);
// 		}
// 	}
// 	var count = 0;
// 	for(i = 0; i < ssArray.length; i++) {
// 		if (ssArray[i] + 1 === ssArray[i+1]) {
// 			count++;
// 		}
// 	}
// 	if (count >= 3) {
// 		document.write("<br>Small straight!");
// 		return true;
// 	}
// },
// fullHouse: function() {
// 	var counter = {};
// 	for(var i = 0; i < 5; i++) {
// 		var num = game.keepArray[i];
// 		counter[num] = counter[num] ? counter[num] + 1 : 1;
// 	}
// 	var checkArray = [];
// 	for (var n in counter) {
// 	    checkArray.push(counter[n]);
// 	}
// 	if ((checkArray[0] === 3 && checkArray[1] === 2) || (checkArray[0] === 2 && checkArray[1] === 3)) {
// 		document.write("<br>Full house!");
// 	    return true;
// 	}		
// },
// fourOfKind: function() {
// 	var counter = {};
// 	for(var i = 0; i < 5; i++) {
// 		var num = game.keepArray[i];
// 		counter[num] = counter[num] ? counter[num] + 1 : 1;
// 	}
// 	var checkArray = [];
// 	for (var n in counter) {
// 	    checkArray.push(counter[n]);
// 	}
// 	if (checkArray[0] >= 4 || checkArray[1] >= 4) {
// 		document.write("<br>Four of a kind!");
// 	    return true;
// 	}		
// },
// checkAll: function() {
// 	check.yahtzee();
// 	check.largeStraight();
// 	check.smallStraight();
// 	check.fullHouse();
// 	check.fourOfKind();
// }
// }
// 
// while (game.continue === true) {
//
// game.play();
// check.checkAll();
// game.keepArray = [];
// 
// }

// Re-factored code


var playButton = document.getElementById("play-button");
var textArea = document.getElementById("text-area");
playButton.onclick = function() {
	while (game.continue === true) {
		textArea.innerHTML = "";
		game.keepArray = [];
		game.play();
		check.checkAll();
		break;
	}	
}

var game = {
	rollArray: [],
	keepArray: [],
	continue: true,
	roll: function() {
		for (i = 0; i < 5 - game.keepArray.length; i++) {
			game.rollArray[i] = Math.floor((Math.random() * 6) + 1);
		}
		textArea.innerHTML = "You rolled: " + game.rollArray + "<br> You are keeping: " + game.keepArray;
	},
	keep: function() {
		var keepValue = prompt("Which number would you like to keep?");
		for (i = 0; i < game.rollArray.length; i++) {
			if (parseInt(keepValue) === game.rollArray[i]) {
				game.keepArray.push(parseInt(keepValue));
				game.rollArray.splice(i, 1);
				break;
			}
		}
		game.keepArray.sort();
		textArea.innerHTML ="You are keeping: " + game.keepArray.sort() + 
							"<br>You still have: " + game.rollArray;
	},
	removeNum: function() {
		var rmValue = prompt("Which number would you like to remove?");
		for (i = 0; i< game.keepArray.length; i++) {
			if (parseInt(rmValue) === game.keepArray[i]) {
				game.rollArray.push(parseInt(rmValue));
				game.keepArray.splice(i, 1);
				break;
			}
		}
		game.keepArray.sort();
		textArea.innerHTML ="You are keeping: " + game.keepArray.sort() + 
							"<br>You still have: " + game.rollArray;
	},
	keepAll: function() {
		for (i = 0; i < game.rollArray.length; i++) {
			game.keepArray.push(game.rollArray[i]);
		}
		game.keepArray.sort();
		textArea.innerHTML ="You have: " + game.keepArray.sort();
	},
	menu: function() {

		var userChoice = prompt("Enter k to keep a number, r to roll again, rm to remove a number, or q to quit.");
		switch(userChoice) {
		case "k":
			game.keep();
			game.menu();
			break;
		case "r": 
			game.roll();
			break;
		case "rm":
			game.removeNum();
			break;
		case "q":
			game.continue = false;
			break;
		default:
			textArea.innerHTML = "Invalid input.  Please try again. <br> You are keeping: " + game.keepArray.sort() + 
							"<br>You still have: " + game.rollArray;
			game.menu();
		}
	},
	play: function() {
		game.roll();
		game.menu();
		game.menu();
		game.keepAll();
	}
}

var check = {
	checkArray: [],
	counter: function() {
		var count = {};
		for(var i = 0; i < 5; i++) {
			var num = game.keepArray[i];
			count[num] = count[num] ? count[num] + 1 : 1;
		}
		check.checkArray = [];
		for (var n in count) {
		    check.checkArray.push(count[n]);
		    check.checkArray = check.checkArray.sort().reverse();
		    console.log(check.checkArray);
		}
	},
	smallStraight: function() {
		var ssArray = [];
		for(var i = 0; i < 5; i++ ) {
			if (game.keepArray[i] === game.keepArray[i-1] + 1) {
				ssArray.push(game.keepArray[i]);
			}
		}
		if (ssArray.length === 3) {
			textArea.innerHTML = game.keepArray + "<br><h2>Small straight!</h2>";
		}
	},
	largeStraight: function() {
		var count = 0;
		for(var i = 0; i < 5; i++ ) {
			if (game.keepArray[i] === game.keepArray[i-1] + 1) {
				count++;
			}
		}
		if (count === 4) {
			textArea.innerHTML ="<h2>Large straight!</h2>";
		}
	},
	yahtzee: function() {
		check.counter();
		if (check.checkArray[0] === 5) {
			textArea.innerHTML = game.keepArray + "<br><h1>Yahtzee!</h1>";
		}
	},
	fullHouse: function() {
		check.counter();
		if (check.checkArray[0] === 3 && check.checkArray[1] === 2) {
			textArea.innerHTML = game.keepArray + "<br><h2>Full house!</h2>";
		}		
	},
	fourOfKind: function() {
		check.counter();
		if (check.checkArray[0] === 4) {
			textArea.innerHTML = game.keepArray + "<br><h2>Four of a kind!</h2>";
		}		
	},
	threeOfKind: function () {
		check.counter();
		if (check.checkArray[0] == 3 && check.checkArray[1] !== 2 ) {
			textArea.innerHTML = game.keepArray + "<br><h2>Three of a kind!</h2>";
		}		
	},
	checkAll: function() {
		check.yahtzee();
		check.largeStraight();
		check.smallStraight();
		check.fullHouse();
		check.fourOfKind();
		check.threeOfKind();
	}
}

// Reflection 

/*

What was the most difficult part of this challenge?

It was difficult working within the limitations of JavaScript.  I 
started off intending to make a more ruby-style game that takes console input and doens't 
require a browser.  I soon found that impractical, though, since there is no 'gets' to input 
to the console in JavaScript.  I found that JavaScript works much better with a user interface,
but the most difficult part for me was time boxing this and not spending the whole week
developing a user interface.  

What did you learn about creating objects and functions that interact with one another?

I had a much easier time calling functions within javascript than I did with ruby.  I found it
fairly easy to write functions within objects, and then call them anywhere in the program using
dot notation.  

Did you learn about any new built-in methods you could use in your refactored solution? If so, 
what were they and how do they work?

I used some built-in methods for both solutions, such as splice and sort.  For the most part, 
though, in both the initial and re-factored solutions, I created my own methods and used basic
iteration loops.

How can you access and manipulate properties of objects?

You can iterate through objects using loops, and access the contents with using dot or bracket
notation in any part of the program.  In this program, I did a lot with arrays inside of objects,
which I manipulated using array methods.  
 
 */














