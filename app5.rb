# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

class Animal
	def run
		puts "Уже бегу!"
	end
	
end

aa = Animal.new

aa.run

puts aa

b = Animal.new
b.run