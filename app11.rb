
class Airplane
	attr_reader :model
	attr_reader :altitude
	attr_reader :speed

	def initialize(model)
		@model = model
		@speed = 0
		@altitude = 0
	end

	def fly
		@speed = 800
		@altitude = 10000
	end

	def land
		@speed = 0
		@altitude = 0
	end

	def moving?
		return @speed > 0
	end
end

models = ['Airbus-320', 'Boeing-777', 'IL-86']
planes = []

1000.times do
	model = models[rand(0..2)]
	plane = Airplane.new(model)
	
	if rand(0..1) == 1
		plane.fly
	end

	planes << plane
end

planes.each do |plane|
	puts "Model: #{plane.model}. Speed: #{plane.speed}. Altitude: #{plane.altitude}."
	puts "Is moving: #{plane.moving?}."
end

puts planes


#plane2 = Airplane.new('Airbus')

#plane1 = Airplane.new('Boeing-777')



#plane1.fly
#puts "Model: #{plane1.model}. Speed: #{plane1.speed}. Altitude: #{plane1.altitude}."
#puts "Is moving: #{plane1.moving?}."

#plane1.land
#puts "Model: #{plane1.model}. Speed: #{plane1.speed}. Altitude: #{plane1.altitude}."
#puts "Is moving: #{plane1.moving?}."

#plane2.fly
#puts "Model: #{plane2.model}. Speed: #{plane2.speed}. Altitude: #{plane2.altitude}."
#puts "Is moving: #{plane2.moving?}."