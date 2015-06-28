=begin
ダックタイピング
アヒルのように歩き、アヒルのように鳴くものはアヒルに違いない
=end

def fetch_and_downcase(ary,index)
	if str =ary[index]
		return str.downcase
	end
end

ary=["boo","foo","woo"]
p fetch_and_downcase(ary,0)
p fetch_and_downcase(ary,1)
p fetch_and_downcase(ary,2)
hash={0=>"boo",1=>"foo",2=>"woo"}
p fetch_and_downcase(hash,1)
nozomu={0=>"boo",1=>"foo",2=>"woo"}
p fetch_and_downcase(nozomu,2)

