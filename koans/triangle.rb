# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  unique_lengths = [a, b, c].uniq
  return :equilateral if unique_lengths.length == 1
  return :isosceles if unique_lengths.length == 2
  return :scalene if unique_lengths.length == 3
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
