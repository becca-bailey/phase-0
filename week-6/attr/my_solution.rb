#Attr Methods

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

class NameData
	attr_reader :name

	def initialize(name)
		@name = name
	end
end

class Greetings
	def initialize
		@becca = NameData.new("Becca")
	end

	def hello
		puts "Hello " + @becca.name + ", nice to see you!"
	end
end

greet = Greetings.new
greet.hello





# Reflection

=begin

--Release 1--

What are these methods doing?

The methods are displaying and changing the information defined in the initialize method. 

How are they modifying or returning the value of instance variables?

They are using instance variables and variable assignment to store and change the information depending on the input.

--Release 2--

What changed between the last release and this release?

Instead of defining a what_is_age method to return the age, age was given an attribute property of attr_reader, which allows 
the age to be read outside of the class.  

What was replaced?

The method for returning the age was replaced with attr_reader.

Is this code simpler than the last?

Yes--it is shorter and cuts down on unnecessary methods.

--Release 3--

What changed between the last release and this release?

Age was also given the attribute of attr_writer, which allows the age to be changed outside of the class.

What was replaced?

The change_my_age method, which was replaced by attr_writer.

Is this code simpler than the last?

Yes, it cuts out another method.

--Release 6--

What is a reader method?

A reader method allows a variable within a class to be seen, but not changed outside the class.

What is a writer method?

A writer method allows a variable within a class to be changed, but not seen outside the class.

What do the attr methods do for you?

The attr method (which is the same as attr_accessor) allows the variable to be seen and changed outside of its class.

Should you always use an accessor to cover your bases? Why or Why not?

No, it's not best practice to always use this method.  It can compromise security, allowing all data to be seen outside of a 
method, and it can also create confusion when refactoring and debugging if you don't want certain variables to be changed 
outside of its class.  

What is confusing to you about these methods?

It's confusing when you're dealing with symbols, local variables, and instance variables.  The attr method takes a symbol, 
but that symbol stands for a variable which has to be initialized in a method.  The first time I tried this, I forgot to use 
the .name method with the NameData variable, and ended up greeting a long ID number instead of the name.






=end