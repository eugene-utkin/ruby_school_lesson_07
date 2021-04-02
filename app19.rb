# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

class Artist
	attr_accessor :discography
	attr_reader :artist

	def initialize artist
		@artist = artist
		@discography = []
	end

	def add_album album
		@discography << album
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

artist1 = Artist.new 'Various Artists'

album1 = Album.new 'The Best'

track1 = Song.new 'Show Must Go On', 6

track2 = Song.new 'Hafanana', 3

track3 = Song.new 'Wicked Game', 4

album1.add_song track1
album1.add_song track2
album1.add_song track3

artist1.add_album album1

puts "Исполнитель: #{artist1.artist}."

artist1.discography.each_with_index do |album, i|
	puts "Альбом #{i+1}: #{album.title}."
	album.tracklist.each_with_index do |track, i|
		puts "\t#{i+1}. #{track.name} - #{track.duration} мин."
	end
end

