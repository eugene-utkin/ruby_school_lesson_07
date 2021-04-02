# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

hh = Hash.new
arr = Array.new

hh.store('Mike', 65)
hh.store('Jessie', 25)

puts hh.inspect
puts hh

hh.each do |k, v|
	puts "#{k}. Возраст: #{v}."
end

puts hh.keys

puts hh.keys.inspect

puts hh.values

puts hh.values.inspect

if hh.key? 'Mike'
	puts hh['Mike']
end

hh.delete 'Mike'
puts hh