def find_largest
  max_palindrome = 0
  palindrome = 0

  999.downto(100) do |x|
    998.downto(100) do |y|
      palindrome = x * y
      max_palindrome = palindrome if palindrome?(palindrome) && palindrome > max_palindrome
    end
  end

  p max_palindrome
end

def palindrome?(x)
  x = x.to_s
  x == x.reverse
end

find_largest
