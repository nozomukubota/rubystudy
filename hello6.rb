=begin
#クラス
class HelloWorld
end

#メソッド
def HelloWorld.hello(name)
	puts "#{name} said hello."
end
=end

# #クラス2
# class HelloWorld

#   クラスメソッド(classの中に入っていて、selfがついている)
# 	def self.hello(name)
# 		puts "#{name} said hello."
# 	end

# end

#クラス3
class HelloWorld
	#クラスメソッド(classの中に入っていて、selfがついている)
	class << self
		def hello(name)
			puts "#{name} said hello."
		end
	end
	#インスタンスメソッド(class selfの中には入っていないので、インスタンスメソッド)
		def love(name)
			puts "#{name} said I love you."
		end
end


HelloWorld.hello("John")
HelloWorld.new.love("Nozomu")