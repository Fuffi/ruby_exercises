def build_fibonacci_until(max_value)
  new_value = 2
  sum_of_evens = 2
  previous_two = [1, 2]
  while new_value <= max_value
    new_value = previous_two[0] + previous_two[1]
    previous_two = [previous_two[1], new_value]
    sum_of_evens += new_value if (new_value % 2) == 0
  end

  sum_of_evens
end

print build_fibonacci_until(4000000)
print "\n"