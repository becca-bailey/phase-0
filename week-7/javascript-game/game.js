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
			break
		case "r": 
			game.roll();
			break
		case "rm":
			game.removeNum();
			break
		case "q":
			game.continue = false;
			break
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
	yahtzee: function() {
		var count = 0;
		for(i = 0; i < 4; i++ ) {
			if (game.keepArray[i] === game.keepArray[i+1]) {
				count++;
			}
		}
		if (count === 4) {
			textArea.innerHTML ="<h1>Yahtzee!</h1>";
			return true;
		}
	},
	largeStraight: function() {
		var count = 0;
		for(i = 0; i < 4; i++ ) {
			if (game.keepArray[i] + 1 === game.keepArray[i+1]) {
				count++;
			}
		}
		if (count === 4) {
			textArea.innerHTML ="<h2>Large straight!</h2>";
			return true;
		}
	},
	smallStraight: function() {
		var ssArray = [];
		for(i = 0; i < 4; i++ ) {
			if (game.keepArray[i] !== game.keepArray[i+1]) {
				ssArray.push(game.keepArray[i]);
			}
		}
		var count = 0;
		for(i = 0; i < ssArray.length; i++) {
			if (ssArray[i] + 1 === ssArray[i+1]) {
				count++;
			}
		}
		if (count >= 3) {
			textArea.innerHTML ="<h2>Small straight!</h2>";
			return true;
		}
	},
	fullHouse: function() {
		var counter = {};
		for(var i = 0; i < 5; i++) {
			var num = game.keepArray[i];
			counter[num] = counter[num] ? counter[num] + 1 : 1;
		}
		var checkArray = [];
		for (var n in counter) {
		    checkArray.push(counter[n]);
		}
		if ((checkArray[0] === 3 && checkArray[1] === 2) || (checkArray[0] === 2 && checkArray[1] === 3)) {
			textArea.innerHTML ="<h2>Full house!</h2>";
		    return true;
		}		
	},
	fourOfKind: function() {
		var counter = {};
		for(var i = 0; i < 5; i++) {
			var num = game.keepArray[i];
			counter[num] = counter[num] ? counter[num] + 1 : 1;
		}
		var checkArray = [];
		for (var n in counter) {
		    checkArray.push(counter[n]);
		}
		if (checkArray[0] >= 4 || checkArray[1] >= 4) {
			textArea.innerHTML ="<h2>Four of a kind!</h2>";
		    return true;
		}		
	},
	checkAll: function() {
		check.yahtzee();
		check.largeStraight();
		check.smallStraight();
		check.fullHouse();
		check.fourOfKind();
	}
}














