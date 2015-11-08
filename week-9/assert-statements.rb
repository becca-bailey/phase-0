# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


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

assert { separate_comma(999) == "999" }
assert { separate_comma(1000) == "1,000" }
assert { separate_comma(10000) == "10,000" }
assert { separate_comma(100000) == "100,000" }
assert { separate_comma(1000000) == "1,000,000" }
assert { separate_comma(10000000) == "10,000,000" }


# 5. Reflection

=begin

What concepts did you review in this challenge?

This challenge reviewed test-driven development and introduced 'assert' syntax.  I also reviewed the 
purpose of 'yield'.

What is still confusing to you about Ruby?

While I understand the purpose of yield, I would like to better understand its practical uses.

What are you going to study to get more prepared for Phase 1?

I would like to become more familiar with rspec and test code.  

=end