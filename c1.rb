=begin

C1をC2に継承している。	
	
=end

class C1
	def hello
		"Hello"
	end
end

class C2 < C1
	alias old_hello hello
	def hello
		"#{old_hello},again"
	end
end

obj=C2.new
p obj.old_hello
p obj.hello