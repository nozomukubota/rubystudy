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
