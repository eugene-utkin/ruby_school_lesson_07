# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

class Airport
	attr_reader :name
	attr_reader :planes

	def initialize name
		@name = name
		@planes = []
	end

	def add_plane plane
		@planes << plane
	end
end

class Plane
	attr_reader :model

	def initialize model
		@model = model
	end
end

class Country
	attr_reader :country_name
	attr_reader :country_airports

		def initialize name
        		@country_name = name
        		@country_airports = []
		end

	def add_airport airport
        @country_airports << airport
	end
end

countries = []

country1 = Country.new 'USA'
country2 = Country.new 'Russia'
countries << country1
countries << country2

airports = []

airport1 = Airport.new 'LAX'
airport2 = Airport.new 'Vnukovo'
airports << airport1
airports << airport2

country1.add_airport airport1
country2.add_airport airport2

plane1 = Plane.new 'Boeing'
plane2 = Plane.new 'Airbus'
plane3 = Plane.new 'IL'
plane4 = Plane.new 'Kukuruznik'
plane5 = Plane.new 'MiG'
plane6 = Plane.new 'Concord'

airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3

airport2.add_plane plane4
airport2.add_plane plane5
airport2.add_plane plane6

countries.each do |country|
	puts country.country_name
		country.country_airports.each_with_index do |airport, i|
				puts "#{i+1}. #{airport.name}."
				puts "Размещённые самолёты:"
				airport.planes.each do |plane|
					puts "- Plane: #{plane.model}."
			end
		puts
	end
	puts
end