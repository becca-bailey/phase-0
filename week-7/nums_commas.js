// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Becca and Deanna.

// Pseudocode
/*

DEFINE a function that takes an integer
  IF integer is less than 1000
    RETURN integer
  ELSE 
    Split integer into array
    Reverse the array
    FOR an index from 3 to the length of the array, adding three each time
      INSERT a comma into the array
    Reverse the array
    Join the array into an integer
    RETURN integer
    

*/
// Initial Solution

// function makeCommas(number){
//   if (number < 1000){
//     return number;
//   }
//   else {
//     var numArray = number.toString();
//     numArray = numArray.split("");
//     numArray.reverse();
//     for (var i = 3; i <= numArray.length; i+=4) {
//       numArray.splice(i, 0, ",");
//     }
//     numArray.reverse();
//     number = numArray.join("");
//     return number;
//   }
// }

// Refactored Solution

function makeCommas(number){
  var numArray = number.toString();
  numArray = numArray.split("").reverse();
  for (var i = 3; i <= numArray.length; i+=4) {
    numArray.splice(i, 0, ",");
  }
  number = numArray.reverse().join("");
  return number;
}

// Your Own Tests (OPTIONAL)

console.log(makeCommas(56));
console.log(makeCommas(25000));
console.log(makeCommas(2000000));


// Reflection

/*

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

Besides for a couple of details, the process for solving this problem was very similar to solving it in Ruby.  In fact, 
most of the same pseudocode could be used for both languages.  There were a couple of differences, such as the non-presence
of negative index numbers, which I used in my original Ruby solution.  In this solution, we went through the extra step
of reversing the array.

What did you learn about iterating over arrays in JavaScript?

Though there are less built-in methods for iterating, a for or while loop usually works well.  It take some practice using
the conditions in a for loop, but it's fairly easy once you understand the syntax.

What was different about solving this problem in JavaScript?

Mostly, it was different methods and syntax.  The process was mostly the same.

What built-in methods did you find to incorporate in your refactored solution?

We mostly used the same methods in the original and re-factored solution, including split, reverse, splice, and join.  Perhaps
there are simpler ways we could have done it in the original solution, but it didn't seem logical to do it another way.

*/