
// Grocery List

// Pseudocode 

/*
Create a new object that stores grocery lists
Create an object called list item that has a name and a quantity

DEFINE a new list function
	REQUEST user input - "What do you want to call this list?"
	Create a new object in grocery lists with this name
	Add list name to dropdown menu
	Display list name

DEFINE an add function
	REQUEST user input - "What item would you like to add?"
	REQUEST user input - "How much?"
	Create a new list item (with checkbox input) with the item and quantity
	Display revised list

DEFINE a remove function
	IF list item is checked
		DELETE list item from grocery list
	Display revised list

DEFINE remove list function
	GET list selected in dropdown menu
	CONFIRM "Are you sure you want to delete (list name)?"
		IF TRUE
			DELETE list from grocery lists

*/

// Initial Solution (Linked to HTML and CSS files in Grocery Lists folder)

// var newList = document.getElementById("new_list");
// var newItem = document.getElementById("new_item");
// var removeItem = document.getElementById("remove_item");
// var list = document.getElementById("list");
// var listTitle = document.getElementById("list_title");
// var listItems = document.getElementsByTagName("input");
// var displayList = document.getElementById("display_list");
// var switchList = document.getElementById("switch_list");
// var removeList = document.getElementById("remove_list");

// newItem.style.display = "none";
// removeItem.style.display = "none";
// displayList.style.display = "none";
// switchList.style.display = "none";
// removeList.style.display = "none";

// groceryLists = new Object();

// var listItem = function() {
//     this.item = item;
//     this.quantity = quantity;
// } 

// function printList(object) {
// 	list.innerHTML = "";
// 	for (item in object) {
// 		list.innerHTML += "<li><input type = 'checkbox' value = " + item + ">" + item + ": " + object[item] + "</input></li>"
// 	}
//    	removeItem.style.display = "block";
// }

// function listMenu(object) {
// 	displayList.innerHTML = "";
// 	for (item in object) {
// 		displayList.innerHTML += "<option value = '" + item + "' >" + item + "</option>";
// 	}
// }

// function displayButtons() {
// 	newItem.style.display = "block";
//     displayList.style.display = "block";
//     switchList.style.display = "block";
//     removeList.style.display = "block";
// }

// newList.addEventListener("click", function() {
//     var listName = prompt("What would you like to name this list?");
//     listTitle.innerHTML = listName;
//     list.innerHTML = "";
//     groceryLists[listName] = new Object();
//     listMenu(groceryLists);
//     displayButtons();
// });

// newItem.addEventListener("click", function() {
// 	var item = prompt("Which item would you like to add?");
// 	var quantity = prompt("How much?");
// 	var listName = displayList.options[displayList.selectedIndex].value;
// 	listTitle.innerHTML = listName;
// 	groceryLists[listName][item] = quantity;
// 	printList(groceryLists[listName]);
// });

// removeItem.addEventListener("click", function() {
// 	var listName = displayList.options[displayList.selectedIndex].value;
// 	for (var i = 0; i < listItems.length; i++) {
// 		if (listItems[i].checked) {
// 			delete groceryLists[listName][listItems[i].value];
// 		}
// 	}
// 	printList(groceryLists[listName]);
// });

// switchList.addEventListener("click", function() {
// 	var listName = displayList.options[displayList.selectedIndex].value;
// 	listTitle.innerHTML = listName;
// 	printList(groceryLists[listName]);
// });

// removeList.addEventListener("click", function() {
// 	var listName = displayList.options[displayList.selectedIndex].value;
// 	if(confirm("Are you sure you want to delete " + listName + "?")) {
// 		delete groceryLists[listName];		
// 	}
// 	listMenu(groceryLists);
// 	if (listTitle.innerHTML === listName) {
// 		listTitle.innerHTML = "";
// 		list.innerHTML = "";
// 	}
// });

// Reflection

/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

I think this challenge really solidified creating objects and adding properties and values to the object.
After last week's challenges, I was surprised by how easy this one seemed.  It was pretty simple to manipulate
the properties of each list using objects.

What was the most difficult part of this challenge?

Though this wasn't my first time using JavaScript to interact with the DOM, the most time-consuming part of this
project was getting HTML values, such as the values of the selected items in the browser.  It was pretty simple
in the end, but it took some time to research the new concepts. 

Did an array or object make more sense to use and why?

I used an object constructor to create each list item, and nested each list item in a list object, which is nested in the Grocery Lists object.  

*/

// Ruby to JavaScript - Validate Credit Card 

/*
DEFINE a function called array sum that takes an array
	FOR EACH number in the array
		ADD the number to the sum
	RETURN the sum

DEFINE a function called validate that takes a number
	RETURN true IF number is a multiple of 10

DEFINE a function called check that takes sixteen numbers
	Split the numbers into an array
	IF the number's index is even
		Push the number times 2 into a string
		Remove the number from the current array
	Split the doubled string back into an array
	CALL sum on both arrays
	CALL validate on sum
*/

// Initial Solution

// function checkDigits(array) {
// 	if(array.length === 16) {
// 		return true;
// 	}
// }

// function arraySum(array) {
// 	var sum = 0;
// 	array.forEach(function(value) {
// 		sum += parseInt(value);
// 	});
// 	return sum;
// }

// function validate(integer) {
// 	if (integer % 10 === 0) {
// 		return true;
// 	}
// 	else
// 		return false;
// }

// function cardCheck(number) {
// 	var numArray = number.toString().split("");
// 	var arrayOne = [];
// 	if (checkDigits(numArray) === true) {
// 		var doubleString = "";
// 		numArray.forEach(function(n, i) {
// 			if (i % 2 === 0) {
// 				doubleString += parseInt(numArray[i] * 2);
// 			}
// 			else {
// 				arrayOne.push(n);
// 			}
// 		});
// 		var arrayTwo = doubleString.split("");
// 		return validate(arraySum(arrayOne) + arraySum(arrayTwo));
// 	}
// 	else {
// 		console.log("Must be a 16 digit number.");
// 	}
// }

// Refactored Solution

function checkDigits(array) {
	if(array.length === 16) {
		return true;
	}
}

function arraySum(array) {
	var sum = 0;
	array.forEach(function(value) {
		sum += parseInt(value);
	});
	return sum;
}

function validate(integer) {
	return integer % 10 === 0 ? true : false;
}

function cardCheck(number) {
	var checkArray = number.toString().split("");
	var arrayOne = [];
	if (checkDigits(checkArray) === true) {
		var doubleString = "";
		checkArray.forEach(function(n, i) {
			i % 2 === 0 ? doubleString += parseInt(Array[i] * 2) : arrayOne.push(n);
		});
		var arrayTwo = doubleString.split("");
		return validate(arraySum(arrayOne) + arraySum(arrayTwo));
	}
	else {
		return "Must be a 16 digit number.";
	}
}

// Reflection 
/*

What concepts did you solidify in working on this challenge? 

I reviewed JavaScript methods for strings and arrays.  I also practiced writing multiple functions and 
calling each function in another function.  

What was the most difficult part of this challenge?

When dealing with multiple methods, it was difficult making sure the functions return what I expect.  
Sometimes, I had to take more time to print the results, and make sure the output was a string or an integer.

Did you solve the problem in a new way this time?

For the most part, yes.  Though I could have taken this much further, I was able to divide parts of the 
function into individual functions.  I also added the numbers with an even index to a string, which eliminated 
some of the ruby methods I used he first time.

Was your pseudocode different from the Ruby version? What was the same and what was different?

The pseudocode was slightly different, as it incorperated the mutiple functions and string methods.
*/
