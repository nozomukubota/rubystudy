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
