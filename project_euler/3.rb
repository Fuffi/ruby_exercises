def find_largest_prime_factor_in(number)
  potential_prime_factor = 2
  largest_prime_factor = 1
  while potential_prime_factor ** 2 <= number
    while number % potential_prime_factor == 0
      number = number / potential_prime_factor
      largest_prime_factor = potential_prime_factor
    end
    potential_prime_factor += 1
  end
  [number, largest_prime_factor].max
end

print "Largest prime factor is " + find_largest_prime_factor_in(600851475143).to_s