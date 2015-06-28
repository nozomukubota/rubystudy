class HelloWorld
	class << self
		def hello(name)
		puts "#{name} said hello."
		end
	end
end

HelloWorld.hello("John")
