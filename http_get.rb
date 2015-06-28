require "net/http"
require "uri"
url= URI.parse("http://www.ruby-lang.org/ja/")

p url.scheme
p url.host
p url.port
p url.path
p url.to_s

http=Net::HTTP.start(url.host,url.port)
doc=http.get(url.path)
puts doc