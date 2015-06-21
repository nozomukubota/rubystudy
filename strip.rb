=begin

このプログラムも謎な部分があった。
ruby strip.rb fact.rb > stripped_fact.rb

とターミナルに打ち込むと書いてあるが、「> stripped_fact.rb」の部分の解説が
ないのだ。>って何だよ、、、と思った。これはrubyの言語ではないらしい。

ターミナルを処理するプログラムはshell。
bash/zshというソフトがある。

ruby strip.rb fact.rb > stripped_fact.rb
とターミナルで実行してあげるとstrip.rbのArgument Valueにfact.rbが入る。
そこで標準出力された結果をstripped_fact.rbとして保存することが出来る。
> stripped_fact.rbはそういう意味。rubyのコマンドではなく、shellの記法。
=end

file=File.open(ARGV[0])
file.each_line do |line|
	next if /^\s*$/ =~ line 	#空白行
	next if /^#/ =~ line 		#シャープで始まる行
	puts line
end
file.close