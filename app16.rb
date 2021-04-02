# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

class Album
	attr_accessor :tracklist
	attr_reader :title

	def initialize title
		@title = title
		@tracklist = []
	end

	def add_song song
		@tracklist << song
	end
	
end

class Song
	attr_reader :name, :duration

	def initialize name, duration
		@name = name
		@duration = duration
	end
end

album1 = Album.new 'The Best'

track1 = Song.new 'Show Must Go On', 6

track2 = Song.new 'Hafanana', 3

track3 = Song.new 'Wicked Game', 4

album1.add_song track1
album1.add_song track2
album1.add_song track3

puts "Альбом: #{album1.title}."

album1.tracklist.each_with_index do |track, i|
	puts "#{i+1}. #{track.name} - #{track.duration} мин."
end


