# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

require 'prime'

def get_sum(x)
  i = 0
  sum = 0
  while i <= x
    sum += i if Prime.prime?(i)
    i += 1
  end
  p sum
end

get_sum(2000000)