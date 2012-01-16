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
if (a <= 0) || (b <= 0) || (c <= 0)
	raise TriangleError, "A Triangle Cant be formed if atleast one of its sides is less than or equal to zero"
	
	else
		if (a + b <= c) || (c + a <= b) || (b + c <= a)
			raise TriangleError, "Sum of two sides of a triangle should be greater than third side"

		end
end

	if (a == b) && (b == c)
	:equilateral

		else
		if (a == b) || (b == c) || (c == a)
		:isosceles
			
			else
			:scalene
		end

	end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
