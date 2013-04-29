def find_largest(x)
  limit = x
  largest_palindrome = 0
  n = 0
  product = 0
  while limit > 0  
    while n <= limit
      product = x * n
      largest_palindrome = product if(product > largest_palindrome and palindrome?(product))
      n += 1
    end
    limit += limit - 1
  end
  p largest_palindrome
end


def palindrome?(x)
  x = x.to_s
  x == x.reverse
end

find_largest(5)



