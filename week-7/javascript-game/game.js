/* Pseudocode

Create a game object
	
	CREATE a roll array
	CREATE a keep array

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

	DEFINE a check function


Create a score object
	Create a key for each yahtzee category
	SET all values to zero

Create a check object
	Yahtzee function 
		IF all values in keep array are equal
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

SET game counter to 0

Game loop

WHILE game counter <= 12

	roll counter = 0
		IF user chooses roll function, add one to roll counter
	roll
	UNTIL roll counter = 3
		REQUEST user input - roll or keep
	IF roll counter = 3
		keep roll
		run all check functions
		IF function returns true
			PRINT function
		PRINT choices
		REQUEST input
		IF input is a number
			COUNT instances of that number
			MULTIPLY numer by instances
			ADD value to score object for that number
		ELSE if input is a check object
			ADD the correct score to the object
				CASE yahtzee...
				CASE three...

	ADD one to game counter

ADD all score values
PRINT score
	
*/

var game = {
	rollArray: [],
	keepArray: [],
	roll: function() {
		for (i = 0; i < 5 - game.keepArray.length; i++) {
			game.rollArray[i] = Math.floor((Math.random() * 6) + 1);
		}
		console.log(game.rollArray);
		yahtzee.play.rollCounter++;
	},
	keep: function() {
		var n = parseInt(prompt("Which number would you like to keep?"));
		for (i = 0; i < game.rollArray.length; i++) {
			if (n === game.rollArray[i]) {
				game.keepArray.push(n);
				game.rollArray.splice(i, 1);
				break;
			}
		}
		console.log(game.keepArray);
		console.log(game.rollArray);
	},
	menu: function() {
		var userChoice = prompt("What would you like to do?  Enter k to keep a number, or r to roll again.");
		if (userChoice === "k") {
			game.keep();
			game.menu();
		} else if (userChoice === "r") {
			game.roll();
		} else {
			console.log("Invalid input.  Please try again");
		}
	}
}

var yahtzee = function() {
	gameCounter: 0,
	play: function() {
		rollCounter: 0,
		while(yahtzee.gameCounter <= 12) {
			game.roll;
			game.menu;
			yahtzee.gameCounter++;
		}
	}
}

yahtzee();














