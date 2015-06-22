#Ruby初心者の僕が何に詰まったのか。
Ruby初心者の僕が何に詰まったのか、を記しておけば、あとからrubyを勉強する人の役に立つ気がするので、詰まったポイントは書き溜めておくことにする。

#1.attr_accessor
* 136Pのattr_accessor:nameを使う例文を読んでいるとき、その書き方でlist8.1のhello_calss.rbを書き換えようとすると、うまく動かない。その動かし方を調べるためにattr_accessorについて調べていると、attr_accessorとattr_reader、attr_writerの違いなどが出てきてしまい、それは教科書に載ってたんだよなあと思う。
* その後、仕方ないので、色んな技術ブログを読むと今度は高度すぎたりする内容だったりして、結局どうすればいいか分からず、詰まった。
* cantmove_def test_mame.rbという動かなかったrubuプログラムを保存しておいた。後で聞いて解決しようと思う。

*attr_accessor:nameをしたとしても、	def initializeは必要になる。特に引数を取る場合は、初期化をしないと駄目。

class HelloWorld
	attr_accessor:name
=begin
	def initialize(myname="Ruby")
		@name=myname
	end

	def test_name
		name="Ruby"
		self.name="Ruby"
	end
=end
	def greet
		puts "Hi,I am #{@name}."
	end

end
bob=HelloWorld.new()
bob.name="bob"
p bob.greet



#2.クラスメソッド
class << クラス名　〜 endといいう特殊なクラス定義の中にインスタントメソッド形式で定義するプログラム例で以下を実行しようとしたが、うまく実行出来なかった。

classmethod.rbは動かなかった<br>
helloworld2.rbは動いた<br>
HelloWorld3.rbは動かなかった<br>
helloworld4.rbは動いた<br>
（138Pから139P）

#3.クラス変数
140Pのhello_count.rbを実行すると動かなかった。・・・なんで？

#組み込みクラスの継承の関係

RubyのすべてのクラスはBasicObjectクラスのサブクラスになっている。BasicObjectクラスにはRubyの世界のオブジェクトとして必要な最低限の機能が定義されている。

BasicObject
* Object
  * Array
  * String
  * Hash
  * Regexp
  * IO
    * File
  * Dir
  * Numeric
    * Integer
      * Fixnum
      * Bignum
    * Float
    * Complex
    * Rational
  * Exception
  * Time

サブクラスとスーパークラスの関係は「is-aの関係にある」と呼ぶ。たとえば、StringクラスはスーパークラスであるObjectクラスとis-aの関係にある。

`str ="This is a String"`<br>
`p str.is_a?(String) #=>true`<br>
`p str.is_a?(Object) #=>true `<br>

ここでは、StringもObjectクラスの1つであるため、どちらもtrueになっている。

`p str.is_a?(Time) #=>false`<br><br>

stringクラスとTimeクラスはis-aの関係になっていないため、falseとなる。
もちろん、**is-aの関係という言葉を使ってみたかっただけ**である！

#Ruby on Railsの設計哲学

-DRY
--Don't repeat yourself

-CoC
--Convention over Configuration
--設定でやるよりも規約を遵守する方が効率的

-MVCアーキテクチャ

Model:データ
View :画面
Controller：ModelとViewをとりもつもの

