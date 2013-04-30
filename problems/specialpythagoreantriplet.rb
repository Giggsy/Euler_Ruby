# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def get_pyth_prod(x)
  min = Math.sqrt(x).to_i
  max = x
  min.upto(max) do |a|
    (a+1).upto(max) do |b|
      c = Math.sqrt(a**2 + b**2)
      sum = a + b + c
      break if sum > x
      p a * b * c if sum == 1000
    end
  end
  
end

get_pyth_prod(1000)