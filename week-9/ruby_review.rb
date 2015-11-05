# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert 
  raise "Assertion failed!" unless yield 
end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# DEFINE method assert
  # RAISE Error unless the condition in the codeblock is true

# DEFINE variable with name "bettysue"
# Inside method, codeblock is true
# Inside method, codeblock is false => Error

# 3. Copy your selected challenge here

# def random_num(min, max)
#    rand(max - min + 1) + min
# end

# describe "separate_comma" do
#    it "returns no comma, when the integer is smaller than 1000" do
#       expect(separate_comma(random_num(0, 999))).to match /^\d{1,3}$/
#    end
#    it "returns one comma, when the integer is between 1000 and 9999" do
#       expect(separate_comma(random_num(1000, 9999))).to match /^\d{1},\d{3}$/
#    end
#    it "returns one comma, when the integer is between 10000 and 99999" do
#       expect(separate_comma(random_num(10000, 99999))).to match /^\d{2},\d{3}$/
#    end
#    it "returns one comma, when the integer is between 100000 and 999999" do
#       expect(separate_comma(random_num(100000, 999999))).to match /^\d{3},\d{3}$/
#    end
#    it "returns two commas, when the integer is between 1000000 and 9999999" do
#       expect(separate_comma(random_num(1000000, 9999999))).to match /^\d{1},\d{3},\d{3}$/
#    end
#    it "returns two commas, when the integer is between 10000000 and 99999999" do
#       expect(separate_comma(random_num(10000000, 99999999))).to match /^\d{2},\d{3},\d{3}$/
#    end
# end

def separate_comma(number)
  comma_number = ""
  number_array = number.to_s.split(//)
  i = -4
  while i >= (0 - number_array.length)
    number_array.insert(i, ",")
    i -= 4
  end
  number_array.each { |n| comma_number = comma_number + n }
  p comma_number
end

# 4. Convert your driver test code from that challenge into Assert Statements

# assert { separate_comma(999) == "999" }
# assert { separate_comma(1000) == "1,000" }
# assert { separate_comma(10000) == "10,000" }
# assert { separate_comma(100000) == "100,000" }
# assert { separate_comma(1000000) == "1,000,000" }
# assert { separate_comma(10000000) == "10,000,000" }


# 5. Reflection



# Drawer Debugger

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents = [];
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end


class Silverware
  attr_reader :type
  attr_reader :clean

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    puts "cleaning the #{type}"
    @clean = true
  end

end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE






# Reflection