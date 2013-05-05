# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# Let us list the factors of the first seven triangle numbers:
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
# What is the value of the first triangle number to have over five hundred divisors?

require 'mathn'

class Integer
  def factors
    number_of_factors = 1
    self.prime_division.each { |i| number_of_factors *= (i[1] + 1) }
    number_of_factors
  end
end


def get_factors(x)
  number_of_factors = 0
  natural_number = 1
  triangle_number = 0

  while number_of_factors <= x
     triangle_number += natural_number 
     natural_number += 1
     number_of_factors = triangle_number.factors
  end
  p triangle_number
end


get_factors(500)