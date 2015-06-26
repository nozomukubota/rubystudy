module M
	def meth
		"meth"
	end
end

class C
	include M#モジュールMをインクルードする
end

c=C.new
p c.meth

p C.include?(M)
#継承関係を調べる
p C.ancestors
p C.superclass