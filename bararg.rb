def bar(arg1,arg2)
	[arg1,arg2]
end

p bar(100,{"a"=>1,"b"=>2})
p bar(100,"a"=>1,"b"=>2)
p bar(100,a:1,b:2)
