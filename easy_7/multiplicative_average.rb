def show_multiplicative_average(array)
  product = array.inject(:*).to_f
  format('%.3f', (product / array.size))
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
