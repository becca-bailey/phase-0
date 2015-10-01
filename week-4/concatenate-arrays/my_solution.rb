# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  new_array = []
  for item in array_1
  	new_array.push(item)
  end
  for item in array_2
  	new_array.push(item)
  end
  return new_array
end

# Refactored Solutuion 

def array_concat(array_1, array_2)
	array_1.concat(array_2)
end