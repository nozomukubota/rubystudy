#DBをつくっています。
names=["小林","林","高野","森岡"]
#名前の表示

=begin
print "最初の名前は",names[1],"です。\n"
puts names[0]
puts names[1]
puts names[2]
puts names[3]
names[0]="野尻"
puts names[0]
puts names[1]
puts names[2]
puts names[3]
puts names
puts names.size
=end
names.each do |s|
	puts s
end