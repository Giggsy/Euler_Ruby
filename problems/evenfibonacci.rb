## Since we actually need to calculate all of the numbers, the typically recursive solution ( x < 2 ? x : fib(x-1) + fib(x-2) )
## would be inefficient.

def fib_array(limit)
  f_array = [1,2]
  n = 2
  even_sum = 0
  while f_array[n-1] <= limit
    f_array << (f_array[n-1] + f_array[n-2])
    n += 1
  end
  f_array.each { |i| even_sum += i if i.even? }
  puts even_sum
end

fib_array(4000000)
