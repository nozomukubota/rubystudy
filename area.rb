=begin
	立方体の表面積を求めるメソッドを作っています。	
=end

def area(x,y,z)
	xy=x*y
	yz=y*z
	zx=z*x
	(xy+yz+zx)*2
end

p area(2,3,4)		#=>52
p area(10,20,30)	#=>2200