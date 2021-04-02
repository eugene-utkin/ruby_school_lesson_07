# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

loop do
puts "Добрый день!" 
puts "Введите команду Status, чтобы посмотреть текущие задачи."
puts "Команда Add позволяет добавить новую задачу."
puts "Exit - выход."



end