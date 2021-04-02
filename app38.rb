def left
	puts "Robot goes left"
end

def right
	puts "Robot goes right"
end

loop do
print "Where to go? (left/right)"

a = gets.strip

send a
end