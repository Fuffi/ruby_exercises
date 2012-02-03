def sum_of_squares_up_to(number)
  (1..number).inject(0) { |sum, x| sum + x * x }
end

def square_of_the_sums_up_to(number)
  sum = (1..number).inject(:+)
  sum * sum
end

print square_of_the_sums_up_to(100) - sum_of_squares_up_to(100)