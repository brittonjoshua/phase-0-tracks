module Flight
	def take_off(altitude)
		puts "taking off and ascending to #{altitude}."
	end
end

class Bird
	include Flight
end

class Plane
	include Flight
end

bird = Bird.new
bird.take_off(4500)

plane = Plane.new
plane.take_off(5000)