class Rover
	attr_accessor :pos_x, :pos_y, :dir
	def initialize(pos_x, pos_y, dir)
		@pos_x = pos_x
		@pos_y = pos_y
		@dir = dir

	end

	def read_instruction(input)
		if input == "L" || input == "R"

	end

	def turn(direction)
			if @dir == "N"
				if direction == "L"
					@dir = "W"
				elsif direction == "R"
					@dir = "E"
				else
					puts "DOES NOT COMPUTE"
				end

			if @dir == "W"
				if direction == "L"
					@dir = "S"
				elsif direction == "R"
					@dir = "N"
				else
					puts "DOES NOT COMPUTE"
				end

			if @dir == "S"
				if direction == "L"
					@dir = "E"
				elsif direction == "R"
					@dir = "W"
				else
					puts "DOES NOT COMPUTE"
				end

			if @dir == "E"
				if direction == "L"
					@dir = "N"
				elsif direction == "R"
					@dir = "S"
				else
					puts "DOES NOT COMPUTE"
				end
			end



	end
end
rover1 = Rover.new(1,2,"N")

