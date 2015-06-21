ary=Array.new
p ary #=>[]
str ="Hello world"
p ary.class #=>Array
p str.class #=>String

p ary.instance_of?(Array)	 #=>True
p str.instance_of?(String)	 #=>True
p ary.instance_of?(String)	 #=>False
p str.instance_of?(Array)	 #=>False