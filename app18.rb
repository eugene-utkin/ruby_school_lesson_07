class Animal
	def initialize name
		@name = name
	end	

	def run
		puts "#{@name} is running..."
	end

	def jump
		puts "#{@name} is jumping..."
	end
end

class Cat < Animal
	def initialize
		super 'cat'
	end

	def say_meow
		puts "#{@name} says 'Meeeoooow!'"
	end
end

class Dog < Animal
	def initialize
		super 'dog'
	end
	def bark
		puts "Woof!"
	end
end

cat1 = Cat.new
dog1 = Dog.new

cat1.jump
cat1.say_meow
dog1.run
dog1.bark