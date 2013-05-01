## 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
## What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def get_smallest_multiple(x)
  
  smallest_multiple = 1

  1.upto(x) do |i|
    smallest_multiple = smallest_multiple.lcm(i)
  end
  
  p smallest_multiple

end

get_smallest_multiple(4430)