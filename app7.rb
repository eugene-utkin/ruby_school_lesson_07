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
		puts @last_person
	end
end

b = Book.new



loop do
	puts "Введите имя: "
	x = gets.strip.capitalize
	if x == ""
		b.show_hash
		b.last
		exit
	end
	puts "Введите возраст:"
	y = gets.strip.capitalize
	puts

	b.set_age 'Name' => x, 'Age' => y

	puts b.aa
end               