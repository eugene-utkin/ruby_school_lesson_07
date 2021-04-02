
add_10 = lambda do |x|
	return x + 10
end

add_20 = lambda {|x| x + 20 }

sub_5 = lambda {|x| x - 5 }

#sub_10 = lambda {|x| x - 10 }

money = 100

a = add_10.call 50
b = add_20.call 50
c = sub_5.call 50

puts a, b, c

hh = { 111 => add_10, 222 => add_10, 333 => add_20, 444 => add_20, 555 => add_20, 666 => sub_5, 777 => sub_5, 888 => sub_5, 999 => sub_5 }

loop do
puts "Press Enter to play"
gets
x = rand(100..999)
puts "Combination: #{x}"

if hh[x]
	money = hh[x].call money
	puts "Congratulations! Your money: #{money}."	
else
	puts "Bad luck. Try again."
end
end 