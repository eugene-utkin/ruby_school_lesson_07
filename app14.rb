class Airport
	attr_reader :name
	attr_reader :airplanes

	def initialize name
		@name = name
		@airplanes = []
	end

	def add_airplane airplane
		@airplanes << airplane
	end
end

class Airplane
	attr_reader :model

	def initialize model
		@model = model
	end
end

airports = []

airport1 = Airport.new 'LAX'
airport2 = Airport.new 'Vnukovo'
airports << airport1
airports << airport2

plane1 = Airplane.new 'Boeing'
plane2 = Airplane.new 'Airbus'
plane3 = Airplane.new 'IL'
plane4 = Airplane.new 'Kukuruznik'
plane5 = Airplane.new 'MiG'
plane6 = Airplane.new 'Concord'

airport1.add_airplane plane1.model
airport1.add_airplane plane2.model
airport1.add_airplane plane3.model

airport2.add_airplane plane4.model
airport2.add_airplane plane5.model
airport2.add_airplane plane6.model


airports.each do |airport|
	puts airport.name
	puts airport.airplanes.model
	puts
end