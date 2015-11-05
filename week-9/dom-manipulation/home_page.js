// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:

document.getElementById('release-0').className = "done";


// Release 1:

document.getElementById('release-1').style.display = "none";


// Release 2:

document.getElementsByTagName('h1')[0].innerHTML = "I completed Release 2";


// Release 3:

document.getElementById('release-3').style.backgroundColor = "#955251";


// Release 4:
var release4 = document.getElementsByClassName('release-4');

for (i = 0; i < release4.length; i++) {
	release4[i].style.fontSize = "2em";
}


// Release 5:

var template = document.getElementById("hidden");

document.body.appendChild(template.content.cloneNode(true));

// Reflection

/*
What did you learn about the DOM?

I solidified the difference between methods that return only one element (such as getElementById) and methods that return an array of multiple elements, such as getElementsByClassName or getElementsByTagName. 

What are some useful methods to use to manipulate the DOM?

In this challenge, I used the .style method, which allows you to add or change CSS rules for an element and the .className function, which allows you to add or change the class name.  

