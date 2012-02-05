def palindromic?(number)
  number_string = number.to_s
  
  for index in (0..(number_string.length / 2))
    return false if number_string[index] != number_string[-index - 1]
  end
  
  true
end

def solution_to_problem4
  palindromics = []
  for x in (999.downto 1)
    for y in (999.downto 1)
      multiplied = x * y
      palindromics << multiplied if palindromic?(multiplied)
    end
  end
  palindromics.max
end



print solution_to_problem4