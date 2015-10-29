module Bitmaker
class Person
	attr_accessor :first_name, :last_name
	attr_reader :age #read only, (getter)
	attr_writer :catch_phrase #write only (setter)
	 #attribute accessor, @first_name and @last_name and @age are all attributes
	 #creates the getter, setter for this named variable (using a symbol)


	def initialize(first_name, last_name) #.new calls initizialize
		@first_name = first_name
		@last_name = last_name
		@age = age
													 #all instance variables start with @,
													 #only have meaning withing a class, the state of mina = person.new is stored in instance variables
	end

	def talk
		puts "I'm a person"
	end

#Attr Accessor removes the need for all this code
# 	def first_name
# 		@first_name
# 	end #called a getter, gets a value: first name = first name

# 	def first_name=(new_first_name) #changing a variable with = , or could do mina.first_name("Marty") to change it
# 			@first_name = new_first_name
# 	end #called a setter, sets a value: first name = new first name

# 	def last_name
# 		@last_name
# 	end

end

mina = Person.new("Mina", "Michail") #syntax for creating an instance of an object
	#when you define a class, then create a .new instance of an object

class Instructor < Person
	def teach
		"OOP is fun!"
	end
end

class Student < Person
	def initialize(first_name, last_name, age) #overrides the previous initialize method from parent
		@first_name = first_name
		@last_name= last_name
		@age =age #now when creating a Student.new, it will require an age parameter. or set a default value in the parameter like so (first_name, last_name, age = 0)
	end

	def learn
		"I totally get it!"
	end

	def talk
		puts "I'm a student"
		super #using the parent class' value for talk
	end

end

mina = Bitmaker::Instructor.new("Mina", "Michail") #used once modules are introduced, great for keeping namespace safe from overwriting common names