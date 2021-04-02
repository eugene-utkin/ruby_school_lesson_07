# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end


def show_book smth
	puts "=================================="
	smth.each do |key, value|
		puts "Имя: #{key}. Возраст: #{value}."
		puts "=================================="
	end

end

book1 = { 'Mike' => 65, 'Jessie' => 25}
book2 = { 'Walt' => 50, 'Gus' => 55}

book2.each do |key, value|
	book1[key] = value
end

show_book book1