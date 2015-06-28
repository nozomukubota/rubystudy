class HelloCount
	@@count=0

	def HelloCount.count
		@@count
	end

	def count
		@count
	end

	def initialize(myname="Ruby")
		@name=myname
		@count=0
	end

	def hello
		@@count +=1
		@count +=1
		puts "Hello,world.I am #{@name}.\n"
	end
end

bob=HelloCount.new("Bob")
alice=HelloCount.new("Alice")
ruby=HelloCount.new

p HelloCount.count#=>0はうまくいった。
p bob.count
p alice.count

5.times {ruby.hello}
bob.hello
alice.hello
ruby.hello
p HelloCount.count#=>3が表示されず。
p ruby.count

