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
