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
  check_if_triangle(a, b, c)
  if a == b and b == c
    :equilateral
  elsif a == b or b == c or a == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

private

 def check_if_triangle(*args)
   max = args.max
   args.delete_at(args.index(max))
   sum_of_two = args.inject {|sum,i| sum + i}
   raise TriangleError if max >= sum_of_two
 end


