// U3.W9:JQuery


// I worked on this challenge with: Chris Savage.
// This challenge took me 1.75 hours.

$(document).ready(function(){


//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
  bodyElement = $('body')


//RELEASE 4: Event Listener
  // Add the code for the event listener here
 topHeading = $('h1').first()
 topHeading.css('color', '#26A65B')
 topHeading.css('border', '2px solid red')
 topHeading.css('display', 'none')



//RELEASE 5: Experiment on your own

// $('img').on('mouseenter', function(e){
//     // e.preventDefault()
//     $(this).attr('src', 'https://upload.wikimedia.org/wikipedia/commons/1/1c/AmericanCopperhead.jpg')
//   }) 

$('img').hover(function(){
    $(this).attr('src', 'https://upload.wikimedia.org/wikipedia/commons/1/1c/AmericanCopperhead.jpg').css('border', '0px solid red').animate({
    	width: '50%',
    	borderWidth: '5px'
    }, 1600);
  }, function() {
  	$(this).attr('src', 'imgs/dbc_logo.png').css('width', 'auto').css('border-width', 0);
  }) 

})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection

/*
What is jQuery?

JQuery is a JavaScript library that can be used to add properties to the DOM of a website.  A library is a set of functions that make JavaScript shorter and easier to write.

What does jQuery do for you?

While it does not add functionality to pure JavaScript (since each jQuery function corresponds to javaScript code in the library), jQuery makes it easier to select objects, manipulate css and html, and add animations.

What did you learn about the DOM while working on this challenge?

We learned about selecting nodes based on their tag name.  For example, we selected the first h1 using the .first() method, though we also could give that node an ID and select it with the ID.  

*/


