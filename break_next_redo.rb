=begin
最初このプログラムをビルドしたときに不思議な感じがした。
ビルドすると

[1, "Perl"]
[2, "Python"]

と出るのだが、

"Perl"は一番最初に配列に格納されているので、添字としては1ではなく0のはずです。

しかし、これは何故かというと、["Perl","Python","Ruby","Scheme"].each do |lang|
の中ではiを添字としては使っていないというのがポイントになる。i=0だったものを+1にした状態で
ビルドされているので、単純に1として表示されているだけだということのようだ・・・。

=end

puts "breakの例"
i=0
#添字アクセス
puts ["Perl","Python","Ruby","Scheme"][0]
#イテレーター。先頭から１件ずつなめていく。
#iを添字として参照していない。
["Perl","Python","Ruby","Scheme"].each do |lang|
		i+=1
		if i==3
			break
		end
		p [i,lang]
	end

puts "nextの例"
i=0
["Perl","Python","Ruby","Scheme"].each do |lang|
	i+=1
	if i==3
		next
	end
	p [i,lang]
end

puts "redoの例:"
i=0
["Perl","Python","Ruby","Scheme"].each do |lang|
	i+=1
	if i ==3
		redo
	end
	p [i,lang]
end