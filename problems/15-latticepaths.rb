# Starting in the top left corner of a 22 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 2020 grid?




# I'm not sure if this is the 'right' way to go about solving this problem, but it seems to me that if we're only allowed to travel down and right,
# then every possible route must contain 20 down moves and 20 right moves. So we know that each routes must be consist of 40 total moves evenly split
# between up and down.

def lattice_paths(dimension)
  total = dimension * 2
  num_of_paths = 1.upto(total).inject(:*)/1.upto(dimension).inject(:*)**2
  p num_of_paths
end

lattice_paths(20)