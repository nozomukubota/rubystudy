len = 10000.to_i
B = 10 ** len
B2 = B << 1
pi = (len * 8 + 1).step(3, -2).inject(B) {|a, i| (i >> 1) * (a + B2) / i} - B
puts "3.#{pi}"