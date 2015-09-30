# Leap Years

# I worked on this challenge with Steven Broderick.

# Your Solution Below

def leap_year?(integer)

	# IF divisible by 400
	if integer % 400 == 0
		true
	# ELSIF divisible by 100
	elsif integer % 100 == 0
		false
	# ELSIF divisible by 4
	elsif integer % 4 == 0
		true
	else
		false
	end

end
