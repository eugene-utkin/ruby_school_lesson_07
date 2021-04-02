class Song
        attr_reader :name
	attr_reader :duration	

	def initialize name, duration
		@name = name
		@duration = duration
	end
end

song1 = Song.new "The show must go on", 6

puts song1.name
puts song1.duration