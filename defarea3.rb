def area2(x:0,y:0,z:0)
	xy=x*y
	yz=y*z
	zx=z*x
	(xy+yz+zx)*2
end
args1={x:2,y:3,z:4}
p area2(args1)		#=>(2*3+3*4+4*2)*2=(6+12+8)*2=26*2=52
args2={x:2,z:3}
p area2(args2)		#=>(2*0+0*3+3*2)*2=(0+0+6)*2=6*2=12

