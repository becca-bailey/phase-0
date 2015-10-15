# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create a letters array containing B, I, N, G, O
  # SET variable 'call' equal to an array 
    # SET call index 0 equal to a random number 0-4 
    # SET call index 1 equal to a random number 1-100
    # PRINT "Do you have" letters array index number plus randon number ?

# Check the called column for the number called.
  # FOR each array in the board
    # Iterate through each array
      # RETURN variable match true if the array index in 'call' is equal to the number at that index
      # PRINT "You have a match!"

# If the number is in the column, replace with an 'x'
  # WHILE variable match is true
    # Array index equal to the call number equals 'x'

# Display a column to the console
  # DEFINE a method that takes a letter, B, I, N, G, O
    # FOR EACH index in the letters array
      # IF the downcase letter is equal to an index
        # FOR EACH array in board
          # PRINT number at that index

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @letters = ['B', 'I', 'N', 'G', '0']
#     @picks = Array.new(2)
#   end

#   def call
#     @picks[0] = rand(5)
#     @picks[1] = rand(20) + 1
#     puts "Do you have " + @letters[@picks[0]].to_s + "-" + @picks[1].to_s + "?"
#   end

#   def search
#     @match = false
#     @bingo_board.each do |row|
#       row.each_with_index do |number, column|
#         if column == @picks[0] && number == @picks[1]
#           @match = true
#           row[@picks[0]] = "X"
#         end
#       end
#     end
#   end

#   def match?
#     if @match
#       puts "You have a match!"
#     else
#       puts "No match this time!"
#     end
#   end


#   def display_card
#     @bingo_board.each do |row|
#       row.map! do |number|
#         if number.to_s.length == 1
#           number = "#{number}   "
#         else
#           number = "#{number}  "
#         end
#       end
#       puts ""
#       puts row.join
#     end
#   end
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ['B', 'I', 'N', 'G', '0']
  end

  def call
    @picks = Array.new(2)
    @picks[0] = rand(5)
    @picks[1] = rand(100) + 1
    puts "Do you have " + @letters[@picks[0]].to_s + "-" + @picks[1].to_s + "?"
  end

  def check
    @match = false
    @bingo_board.each do |row|
      row.each_with_index do |number, column|
        if column == @picks[0] && number == @picks[1]
          @match = true
          row[@picks[0]] = "X"
          puts "You have a match!"
        end
      end
    end
    puts "No match this time!" if @match == false 
  end

  def display_card
    @bingo_board.each do |row|
      row.map! do |number|
        if number.to_s.length == 1
          number = " #{number}  "
        else
          number = " #{number} "
        end
      end
      puts ""
      puts row.join
    end
    puts ""
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

new_game = BingoBoard.new
# new_game.call
# new_game.check
# new_game.display_card



#Reflection