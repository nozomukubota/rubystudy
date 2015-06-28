module Edition
	def edition(n)
		"#{self} Number#{n}"
	end
end

str="Interesting Ruby"
str.extend(Edition)
p str.edition(4)