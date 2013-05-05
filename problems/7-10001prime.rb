# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10001st prime number?

def get_prime(x)
  prime_array = [2]
  current_num = 3
  until prime_array.size == x
    prime_array << current_num if isprime?(current_num, prime_array)
    current_num += 2
  end
  p prime_array[-1]
end

def isprime?(current_num, prime_array)
  maximum = Math.sqrt(current_num)
  prime_array.each do |x|
    return false if current_num % x == 0
    return true if x > maximum
  end
  
end

get_prime(10001)
