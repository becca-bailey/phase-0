stuff = []
puts "What would you like to put into the array?"
while true
	input = gets.chomp
	stuff.push input
	if input == ""
		puts stuff.sort
		break
	end
end