class Something
	attr_accessor :name

	def initialize
		#@name = 'Mike'
		send("name=", "Mike")
	end
end

s = Something.new
puts s.inspect

puts s.name



def mm
	puts "Hello"
end

send :mm



def nn par1
	puts par1
end

send :nn, 1



def xx hash
	puts hash
end

send :xx, :x => 1, :y => 2
send 'xx', :x => 1, :y => 2


