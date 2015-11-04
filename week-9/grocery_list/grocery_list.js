// Initial Solution

var newList = document.getElementById("new_list");
var newItem = document.getElementById("new_item");
var removeItem = document.getElementById("remove_item");
var list = document.getElementById("list");
var listTitle = document.getElementById("list_title");
var listItems = document.getElementsByTagName("input");
var displayList = document.getElementById("display_list");
var switchList = document.getElementById("switch_list");
var removeList = document.getElementById("remove_list");

newItem.style.display = "none";
removeItem.style.display = "none";
displayList.style.display = "none";
switchList.style.display = "none";
removeList.style.display = "none";

groceryLists = new Object();

var listItem = function() {
    this.item = item;
    this.quantity = quantity;
} 

function printList(object) {
	list.innerHTML = "";
	for (item in object) {
		list.innerHTML += "<li><input type = 'checkbox' value = " + item + ">" + item + ": " + object[item] + "</input></li>"
	}
   	removeItem.style.display = "block";
}

function listMenu(object) {
	displayList.innerHTML = "";
	for (item in object) {
		displayList.innerHTML += "<option value = '" + item + "' >" + item + "</option>";
	}
}

function displayButtons() {
	newItem.style.display = "block";
    displayList.style.display = "block";
    switchList.style.display = "block";
    removeList.style.display = "block";
}

newList.addEventListener("click", function() {
    var listName = prompt("What would you like to name this list?");
    listTitle.innerHTML = listName;
    list.innerHTML = "";
    groceryLists[listName] = new Object();
    listMenu(groceryLists);
    displayButtons();
});

newItem.addEventListener("click", function() {
	var item = prompt("Which item would you like to add?");
	var quantity = prompt("How much?");
	var listName = displayList.options[displayList.selectedIndex].value;
	listTitle.innerHTML = listName;
	groceryLists[listName][item] = quantity;
	printList(groceryLists[listName]);
});

removeItem.addEventListener("click", function() {
	var listName = displayList.options[displayList.selectedIndex].value;
	for (var i = 0; i < listItems.length; i++) {
		if (listItems[i].checked) {
			delete groceryLists[listName][listItems[i].value];
		}
	}
	printList(groceryLists[listName]);
});

switchList.addEventListener("click", function() {
	var listName = displayList.options[displayList.selectedIndex].value;
	listTitle.innerHTML = listName;
	printList(groceryLists[listName]);
});

removeList.addEventListener("click", function() {
	var listName = displayList.options[displayList.selectedIndex].value;
	if(confirm("Are you sure you want to delete " + listName + "?")) {
		delete groceryLists[listName];		
	}
	listMenu(groceryLists);
	if (listTitle.innerHTML === listName) {
		listTitle.innerHTML = "";
		list.innerHTML = "";
	}
});

