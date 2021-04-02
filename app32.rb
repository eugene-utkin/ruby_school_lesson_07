class Something
	attr_accessor :name, :age, :country

	def initialize hash
		hash.each do |key, value|
			send("#{key}=", value)
		end
	end
end

s = Something.new :name => "Mike", :age => 60, :country => "USA"

puts s.inspect

puts s.name