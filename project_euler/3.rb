def find_largest_prime_factor_in(number)
  potential_prime_factor = 2
  largest_prime_factor = 1
  while potential_prime_factor * potential_prime_factor <= number
    while number % potential_prime_factor == 0
      print "Found prime factor:" + potential_prime_factor.to_s + "\n"
      number = number / potential_prime_factor
      largest_prime_factor = potential_prime_factor
    end
    potential_prime_factor += 1
  end
  [number, largest_prime_factor].max
end

print find_largest_prime_factor_in(600851475143)