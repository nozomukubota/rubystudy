module ClassMethods
	def cmethod
		"class method"
	end
end

module InstanceMethods
	def imethod
		"Instance methods"
	end
end

class MyClass
	#extendするとクラスメソッドを追加出来る
	extend ClassMethods
	#includeするとインスタンスメソッドを追加出来る
	include InstanceMethods
end

p MyClass.cmethod
p MyClass.new.imethod