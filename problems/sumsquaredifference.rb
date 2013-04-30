# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def get_difference(x)
  sum_of_squares = 0
  sum = 0

  x.downto(1) { |x| sum_of_squares += x ** 2 }
  x.downto(1) { |x| sum += x }

  p (sum ** 2) - sum_of_squares 

end

get_difference(100)