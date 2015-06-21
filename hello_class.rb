class HellowWorld
	def initialize(myname = "Ruby")
		@name =myname
	end

	def hello
		puts "Hello, world. I am #{@name}."
	end
=begin
	def name
		@name
	end

	def name=(value)
		@name=value
	end
=end

	class HelloWorld
		attr_accessor:name
	end
end

bob=HellowWorld.new("Bob")
alice=HellowWorld.new("Alice")
ruby=HellowWorld.new

ruby.hello
alice.hello

bob.name="Robert"
p bob.name
