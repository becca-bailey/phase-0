// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: David Roberts
// This challenge took me 3 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//FOR each property in votes
//  FOR each object in property
//    IF name is not a property of president
//      CREATE name property in president
//      ASSIGN value of name to 1
//    ELSE
//      ADD 1 to value of name



// __________________________________________
// Initial Solution

//console.log(votes["Alex"].president)

// function tallyVotes() {

//   for (var voter in votes) {
//     voter_name = votes[voter]

//     var name = votes[voter].president; 
//     if (voteCount.president.hasOwnProperty(name)) {
//       voteCount.president[name] += 1;
//     }
//     else {
//       voteCount.president[name] = 1;
//     }
//   }
  
//   for (var voter in votes) {
//     var name = votes[voter].vicePresident; 
//     if (voteCount.vicePresident.hasOwnProperty(name)) {
//       voteCount.vicePresident[name] += 1;
//     }
//     else {
//       voteCount.vicePresident[name] = 1;
//     }
//   }

//   for (var voter in votes) {
//     var name = votes[voter].secretary; 
//     if (voteCount.secretary.hasOwnProperty(name)) {
//       voteCount.secretary[name] += 1;
//     }
//     else {
//       voteCount.secretary[name] = 1;
//     }
//   }

//   for (var voter in votes) {
//     var name = votes[voter].treasurer; 
//     if (voteCount.treasurer.hasOwnProperty(name)) {
//       voteCount.treasurer[name] += 1;
//     }
//     else {
//       voteCount.treasurer[name] = 1;
//     }
//   }
// //   console.log(voteCount);
// }

// tallyVotes();

//Pseudocode
// FOR each office in voteCount
//    ASSIGN counter to 0
//    IF vote count is greater than counter
//      SET counter to vote count
// FIND property that is equal to counter
// SET office winner property

// function winners() {
//   var counter = 0;
//   for (var name in voteCount.president) {
//     if (counter < voteCount.president[name]) {
//       counter = voteCount.president[name];
//     }
//   }
//   console.log(counter);
//   for (var name in voteCount.president) {
//     if (counter === voteCount.president[name]) {
//       officers.president = name;
//     }
//   }
//   counter = 0;
//   for (var name in voteCount.vicePresident) {
//     if (counter < voteCount.vicePresident[name]) {
//       counter = voteCount.vicePresident[name];
//     }
//   }
//   console.log(counter);
//   for (var name in voteCount.vicePresident) {
//     if (counter === voteCount.vicePresident[name]) {
//       officers.vicePresident = name;
//     }
//   }
//   console.log(officers);
//   counter = 0;
//   for (var name in voteCount.secretary) {
//     if (counter < voteCount.secretary[name]) {
//       counter = voteCount.secretary[name];
//     }
//   }
//   console.log(counter);
//   for (var name in voteCount.secretary) {
//     if (counter === voteCount.secretary[name]) {
//       officers.secretary = name;
//     }
//   }
//   console.log(officers);
//   counter = 0;
//   for (var name in voteCount.treasurer) {
//     if (counter < voteCount.treasurer[name]) {
//       counter = voteCount.treasurer[name];
//     }
//   }
//   console.log(counter);
//   for (var name in voteCount.treasurer) {
//     if (counter === voteCount.treasurer[name]) {
//       officers.treasurer = name;
//     }
//   }
//   console.log(officers);
// }

// winners();

// __________________________________________
// Refactored Solution

function tallyVotes() {

  for (var voter in votes) {
    for (var office in votes[voter]) {
      var name = votes[voter][office]; 
      var tally = voteCount[office];
      tally.hasOwnProperty(name) ? tally[name] += 1 : tally[name] = 1;
    }
  }
}

tallyVotes();

function winners() {
  for (var office in voteCount) {
    var counter = 0;
    for (var name in voteCount[office]) {
      var votes = voteCount[office][name];
      counter < votes ? counter = votes : counter;
      counter === votes ? officers[office] = name : counter;
    }
  }
}

winners();




// __________________________________________
// Reflection
/* 
What did you learn about iterating over nested objects in JavaScript?

This was a difficult challenge becuase of all the nested objects.  We learned about
when to use bracket notation instead of dot notation to incorporate a variable into
the property name, such as voteCount[office][name].  

Were you able to find useful methods to help you with this?

We used the hasOwnProperty method to determine whether a name already existed in the 
voteCount object.  Other than that, we just used for loops and variables.

What concepts were solidified in the process of working through this challenge?

We learned a lot about using variables to access objects, and re-factoring using these
variables.  As you can see, our original code was a lot of copied and pasted code that
wasn't DRY at all.  In the re-factored solution, we were able to use another loop to 
iterate through the properties, rather than listing each one separately.  

*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)