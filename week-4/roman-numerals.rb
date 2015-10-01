def roman_numeral(number)
	number = number.to_s.split('').map { |digit| digit.to_i }
	numerals = []
	if number[-4]
		thousands = number[-4]
		numerals.push "M" * thousands
	end
	if number[-3]
		hundreds = number[-3]
		if hundreds == 0
			numerals.push ""
		elsif hundreds > 0 && hundreds < 4
			numerals.push "C" * hundreds
		elsif hundreds == 4
			numerals.push "XD"		
		elsif hundreds == 9
			numerals.push "CM"
		else 
			numerals.push "D" + ("C" * (hundreds - 5))
		end
	end
	if number[-2]
		tens = number[-2]
		if tens == 0
			numerals.push ""
		elsif tens > 0 && tens < 4
			numerals.push "X" * tens
		elsif tens == 4
			numerals.push "XL"
		elsif tens == 9
			numerals.push "XC"
		else
			numerals.push "L" + ("X" * (tens - 5))
		end
	end
	if number[-1]
		ones = number[-1]
		if ones == 0
			numerals.push ""
		elsif ones == 4
			numerals.push "IV"
		elsif (ones > 0 && ones < 5)
			numerals.push "I" * ones
		elsif ones == 5
			numerals.push "V"
		elsif ones == 9
			numerals.push "IX"
		else 
			numerals.push "V" + ("I" * (ones - 5))
		end
	end
	
	puts numerals.join
end


roman_numeral(1988)


# roman_numeral([1, 9, 8, 8])
