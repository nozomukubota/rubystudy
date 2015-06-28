class HelloWorld
	#attr_accessor:name
	def initialize(myname="Ruby")
		@name=myname
	end

	def test_name
		name="Ruby"
		self.name="Ruby"
	end
	def greet
		puts "Hi,I am #{@name}."
	end

end
bob=HelloWorld.new("Bob")
p greet.bob