puts 'Hi!  What\'s your first name?'
first_name = gets.chomp
puts 'Do you have a middle name, too?'
middle_name = gets.chomp
puts 'Finally, what is your last name?'
last_name = gets.chomp
puts 'Nice to meet you ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

puts 'What is your favorite number?'
number = gets.chomp
better_number = number.to_i + 1
puts 'But wouldn\'t you rather choose '+ better_number.to_s + '? It\'s a bigger, better number!'