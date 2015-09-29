**What does puts do?**

The `puts` command prints a result to the terminal on its own line, and returns 'nil'.

**What is an integer?  What is a float?**

An integer is a whole number (no decimal point) and a float is a number with a decimal.  

**What is the difference between float and integer division?  How would you explain the difference to someone who doesn't know anything about programming?**

Dividing two floats will return the number as a decimal, giving you the exact result.  Dividing two intgers will always round down to the nearest whole number, not retuning the remainder.  For example, if you and your friends were splitting a pizza and you wanted to know exactly how much pizza each person could have, including the exact percentage of the leftover piece, you would divide using floats.  If you didn't want to share the last piece, you would divide using integers to know how many whole pieces each person could have.

```ruby
puts 24 * 365
puts ((60 * 24) * (365 * 10))
```

**How does Ruby handle additino, subtraction, multipliation, and division of numbers?**

Ruby will return the result wihout any particular syntax.  If you would like to print to the console, you can use `puts`, `print` or `p`.  

**What is the difference between integers and floats?**

Integers are whole numbers without any fractions or decimals. For example:  `8` is an integer, `4.00` is a float.  

**What is the difference between integer and float division?**

Performing an operation in Ruby with an integer will always return an integer. A float is a number with decimals, and performing an operation with a float will return the exact decimal value.  For example, `5 / 2` will return `2`, rounding down to the nearest integer, while `5.00 / 2.00` will return `2.5`.  

**What are strings?  Why and when would you use them?**

A string is simply a string of text.  For example, "My name is Becca" would be a string.  Strings are always in quotes.  A string could be used to store or input text information, such as a name, and address, etc.

**What are local variables?  Why and when would you use them?**

A local variable is a placeholder for a string, a number, or a boolean within a program.  For example:

```ruby
var1 = 10
var2 = 5
puts var1 + var2

=> 15
```

```ruby 
name = "Becca"
puts "My name is #{name}."

=> My name is Becca.
```

**How was this challenge?  Did you get a good review of some of the basics?**

Yes!  Though this challenge was pretty basic, I learned some things I never learned in the Codecademy challenges, such as the difference between integers and floats, and the difference between `print` and `p`.  
[4.2.1 Defining Variables](defining-variables.rb)

[4.2.2 Simple String Methods](simple-string.rb)

[4.2.3 Local Variables and Basic Arithmetic](basic-math.rb)


