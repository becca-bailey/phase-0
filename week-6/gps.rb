# Your Names
# 1) Becca Nelson
# 2) Eunice Do

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  # The input is an order - item and quantity
  # The library hash includes the items we are able to make and the serving size for each item
  
  if (library.include? item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input") 
  end
  
  # This method checks whether the item to make matches a library item
  # The error counts down so we check all of the library items before giving an argument error
  # Argument error if there is no match
 
  serving_size = library[item_to_make]
  
  # Checks hash values for each baked item's serving size
  
  serving_size_mod = order_quantity % serving_size
  # Determines whether there is leftover ingredients between order quantity and serving size
  
  if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  elsif serving_size_mod < 5
    extras = " You can make #{serving_size_mod} cookies!"

  elsif serving_size_mod == 5
    extras = " You can make 1 cake!"

  else serving_size_mod == 6
    extras = " You can make 1 cake and 1 cookie!"

  end

  return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items:" + extras
  
end
    
  # Case for serving size modulo. When there is no remainder, return order to make quantity. 
  # When there is a remainder, display amount of extra servings needed to meet order quantity.
    
  # Here we can display a suggestion for what can be done with the leftovers.    
    

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection

=begin
  
What did you learn about making code readable by working on this challenge?

Code is much less readable when it uses the wrong methods.  For example, it was confusing to have an error counter and a values_at? method just to match input to hash keys.  It's also difficult when you don't fully understand the purpose for a variable.  My pair and I were confused at times about exactly what the order_quantity and serving_size_mod stood for.

Did you learn any new methods? What did you learn about them?

We didn't learn any new methods, though we had to learn more about values_at in order to understand its purpose in the original code.  We also had to review the syntax for include? and any? (which we originally used instead of include).

What did you learn about accessing data in hashes? 

I learned that while there are multiple ways to access information, it's usually best to use the simplest possible method to make the code easier to understand.  

What concepts were solidified when working through this challenge?
  
end

