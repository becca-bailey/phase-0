
/* 

 // JavaScript Olympics

// I worked on this challenge with Lars Johnson

// This challenge took me 2 hours.
*/

// Warm Up

function Athlete(name, event) {
  this.name = name,
  this.event = event
}

var sarah = new Athlete("Sarah Hughes", "Ladies' Singles");
var michael = new Athlete("Michael Jordan", "Basketball");

var newArray = [sarah, michael];

function Winner(athleteArray) {
  athleteArray.forEach(function(athlete) {
  	athlete.win = athlete.name + " won the " + athlete.event; + "!";
  })
}

Winner(newArray);


// Bulk Up



// Jumble your words


function stringReverse(string) {
  var stringArray = string.split("");
  stringArray = stringArray.reverse();
  console.log(stringArray.join(""));
}

stringReverse("Jumble your words!")


// 2,4,6,8

// var newArray = [];
// numbersArray.forEach(function(n) {
// 	if (n % 2 === 0) {
//   		newArray.push(n);
// 	}
// })
// console.log(newArray);



function checkEven(value, index) {
  if (value % 2 === 0) {
    return true;
  }
}
var numbers = [1,2,3,4,5];
console.log(numbers.filter(checkEven));
  




// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name,
  this.age = age,
  this.sport = sport,
  this.quote = quote
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

/*
What JavaScript knowledge did you solidify in this challenge?

I learned more about using JavaScript methods, such as forEach, split, join, and revrse.  These are methods 
that have ruby equivalents, but it's interesting to see the differences in syntax and output.

What are constructor functions?

Constructor functions are functions that create an object with properties and values.  For example, each
athlete is an object with set of properties and values--name, age, sport, and quote.

How are constructors different from Ruby classes (in your research)?

Constructors seem to share characteristics with both ruby classes and hashes.  They are like classes that allow 
you to create an object, but also like a hash that can store key/value pairs.  Like in ruby classes, you can 
create methods inside a constructor, but these methods need to be called with the object name.  Also, all values
must be accessed with dot or bracket notation, rather than instance variables.  

*/
