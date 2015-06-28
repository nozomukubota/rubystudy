class HelloWorld
	attr_accessor:name
=begin
	def initialize(myname="Ruby")
		@name=myname
	end

	def test_name
		name="Ruby"
		self.name="Ruby"
	end
=end
	def greet
		puts "Hi,I am #{@name}."
	end

end
bob=HelloWorld.new()
bob.name="bob"
p bob.greet