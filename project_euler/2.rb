def build_fibonacci_until(max_value)
  fibonacci = []
  fibonacci[0] = 1
  fibonacci[1] = 2
  new_index = 2
  new_value = 3
  while new_value <= max_value
  	new_value = fibonacci[new_index - 1] + fibonacci[new_index - 2]
    fibonacci[new_index] = new_value
    new_index += 1
  end

  fibonacci
end

print build_fibonacci_until(4000000).select{|x| (x % 2) == 0}.inject(:+)
print "\n"