print (1...1000).select{|x| (x % 3) == 0 || (x % 5) == 0}.inject(:+)
print "\n"