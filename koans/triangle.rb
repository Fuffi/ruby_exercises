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
  sides = [a, b, c]
  perimeter = (a + b + c)
  raise TriangleError if sides.any?{|side| side <= 0 or side >= perimeter - side}

  unique_sides_count = sides.uniq.count
  return :equilateral if unique_sides_count == 1
  return :isosceles if unique_sides_count == 2
  return :scalene if unique_sides_count == 3
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
