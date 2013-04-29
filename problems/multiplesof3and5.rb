sum = 0
(1..999).each { |i| sum += i if( i%5==0 || i%3==0) }
puts sum