def foo(arg)
	arg
end

p foo({"a"=>1,"b"=>2})	#=>{"a"=>1,"b"=>2}
p foo("a"=>1,"b"=>2)	#=>{"a"=>1,"b"=>2}
p foo(a:1,b:2)			#=>{:a=>1,:b=>2}