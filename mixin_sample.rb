module MyModule
	#共通して提供したいメソッドなど
end

class MyClass1
	include MyModule
end

class MyClass2
	include MyModule
	#MyClassに固有のメソッドなど
end
