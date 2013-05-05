# Longest Collatz sequence
# The following iterative sequence is defined for the set of positive integers:
# n  n/2 (n is even)
# n  3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?
# NOTE: Once the chain starts the terms are allowed to go above one million.

def get_collatz(max)
  max_length = 0
  max_num = 0
  max.downto(1).each do |x|
    temp_length = 0 
    temp_num = x
    until x == 1
      x.even? ? x /= 2 : x = 3*x + 1
      temp_length += 1
      max_length, max_num = temp_length, temp_num if temp_length > max_length
    end
  end
  p max_length
  p max_num
end


get_collatz(1000000)