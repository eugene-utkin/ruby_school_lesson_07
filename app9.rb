# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

x = 0
y = 0

class Book
	def initialize
		@hh = {}
		@last_person = ''
	end
	def set_age options
        	puts 'Такое имя уже есть!' if @hh[options['Name']]
        	@hh[options['Name']] = options['Age']
		@last_person = options['Name']
	end
	def show_hash
        	@hh.each do |key, value|
                	puts "Имя: #{key}. Возраст: #{value}."
        	end
	end
	def aa
		@hh
	end
	def last
		@last_person
	end
end

b = Book.new
b.set_age 'Name' => 'Walt', 'Age' => 55
b.set_age 'Name' => 'Jessie', 'Age' => 25
b.set_age 'Name' => 'Badger', 'Age' => 23
b.show_hash
puts b.last
  