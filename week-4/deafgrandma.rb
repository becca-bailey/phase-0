puts "Grandma is vacuuming the driveway in her bathrobe again. Shouldn't you try to stop her?"

while true
	input = gets.chomp
	if input == "BYE"
		break
	elsif input == input.upcase
		puts "NO, NOT SINCE " + rand(1930..1950).to_s + "!"
	else
		puts "HUH?! SPEAK UP, SONNY!"
	end
end

puts "I ALWAYS LIKED YOUR BROTHER BETTER ANYWAY!"
