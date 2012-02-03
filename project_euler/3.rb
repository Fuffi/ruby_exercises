def prime?(number)
  for potential_factor in (2...(number/2))
  	return false if (number % potential_factor) == 0
  end
  
  true
end

def find_largest_prime_factor_in(number)
  for potential_factor in number.downto(2)
    return potential_factor if (number % potential_factor) == 0 && prime?(potential_factor)
  end
end

print find_largest_prime_factor_in(600851475143)