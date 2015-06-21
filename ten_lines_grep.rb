=begin
ARGV=Arguments Value.
これをビルドするだけだと意味ないけど、
ruby ten_lines_grep.rb matz ChangeLog.txt

とかのようにコマンドラインで打つと１行１行を探索し、
matzと書いてある文章をChangeLog.txtから探し出し、表示してくれます。便利。
ARGV[0]が1個目。例）matz
ARGV[1]が2個目。例）ChangeLog.txt
=end

pattern=Regexp.new(ARGV[0])
filename =ARGV[1]
max_matches=10
matches=0
file = File.open(filename)
file.each_line do |line|
	if matches >= max_matches
		break
	end
	if pattern =~ line
	   matches += 1
	   puts line
	end
end
file.close