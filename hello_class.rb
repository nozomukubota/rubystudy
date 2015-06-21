class HellowWorld
	def initialize(myname = "Ruby")
		@name =myname
	end

	def hello
		puts "Hello, world. I am #{@name}."
	end
end

bob=HellowWorld.new("Bob")
alice=HellowWorld.new("Alice")
ruby=HellowWorld.new

ruby.hello