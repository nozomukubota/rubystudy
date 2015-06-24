class AccTest
	public#これ以降に定義されたメソッドはpublicになる
	def pub
		puts "pub is a public method."
	end

	private#これ以降に定義されたメソッドはprivateになる
	def priv
		puts "priv is a private method."
	end
end

acc=AccTest.new
acc.pub
acc.priv