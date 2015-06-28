t=Time.now
p t.year
p t.month
p t.day
p t.hour
p t.min
p t.localtime 

=begin
ポリモルフィズム＝多相性、多態性
=end
obj =Object.new
str ="Ruby"
num =Math::PI
p obj.to_s
p str.to_s
p num.to_s

