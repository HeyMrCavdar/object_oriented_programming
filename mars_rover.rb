class Rover
	attr_accessor :pos_x, :pos_y, :dir
	def initialize(pos_x, pos_y, dir)
		@pos_x = pos_x
		@pos_y = pos_y
		@dir = dir

	end

	def read_instruction(input)
		if input == "L" || input == "R"
			turn(input)
		elsif input == "M"
			move
		else
			"DOES NOT COMPUTE"
		end
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

		elsif @dir == "W"
			if direction == "L"
				@dir = "S"
			elsif direction == "R"
				@dir = "N"
			else
				puts "DOES NOT COMPUTE"
			end

		elsif @dir == "S" #Needed to use elsif because it is an if within an if
			if direction == "L"
				@dir = "E"
			elsif direction == "R"
				@dir = "W"
			else
				puts "DOES NOT COMPUTE"
			end

		elsif @dir == "E"
			if direction == "L"
				@dir = "N"
			elsif direction == "R"
				@dir = "S"
			else
				puts "DOES NOT COMPUTE"
			end
		else
			puts "DOES NOT COMPUTE"
		end
	end

	def move
		if @dir == "N"
			@pos_y += 1
		elsif @dir == "S"
			@pos_y -= 1
		elsif @dir == "W"
			@pos_x -= 1
		elsif @dir == "E"
			@pos_x += 1
		else
			puts "DOES NOT COMPUTE"
		end

	end

end


rover1 = Rover.new(1,2,"N")

