def sum_square_difference(number)
  square_sums = (1..number).inject(:+)**2
  sum_squares = (1..number).map { |num| num**2 }.inject(:+)

  square_sums - sum_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
