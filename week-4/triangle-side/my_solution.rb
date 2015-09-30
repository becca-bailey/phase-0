# I worked on this challenge with: Steven Broderick.


# Your Solution Below

def valid_triangle?(a, b, c)

  # IF a, b, or c = zero
  if a == 0 || b == 0 || c == 0
    false
  else
    if a + b > c && a + c > b && b + c > a
      true
    else
      false
    end
  end
  
end