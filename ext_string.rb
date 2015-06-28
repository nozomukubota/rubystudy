class String
	def count_word
		ary=self.split(/\s+/)
		return ary.size
	end
end

str="Just Another Ruby Newvie."

ary2=str.split(/\s+/)
p ary2

p str.count_word
