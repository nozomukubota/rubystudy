=begin

pubメソッドを普通に呼び出すことは出来るが、
privメソッドを呼ぼうとすると例外が発生する	
ということを実験しています。
	
=end

class AccTest
	def pub
		puts "pub is a public method."
	end

	public :pub#pubメソッドをpublicに指定（指定しなくてもいい）

	def priv
		puts "priv is a private method"
	end

	private :priv# privメソッドをprivateに設定
end

acc=AccTest.new
acc.pub
acc.priv

