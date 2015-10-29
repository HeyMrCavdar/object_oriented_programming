class Person
	attr_accessor :name, :greeting

	def initialize(name, greeting)
		@name = name
	end

	def greeting
		puts "Hi my name is #{name}"
	end
end

class Student < Person
	def learn
		puts "I get it!"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end


chris = Instructor.new("Chris", "Hiii everybody!")
cristina = Student.new("Cristina", "Hi instructor Chris!")

puts chris.name
puts cristina.name

chris.teach
cristina.learn
# cristina.teach---> class is not defined with teach method
# chris.learn---> class is not defined with learn method
