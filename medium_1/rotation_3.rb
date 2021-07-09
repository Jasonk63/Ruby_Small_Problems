def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digits)
  all_digits = number.to_s.chars
  all_digits[-digits..-1] = rotate_array(all_digits[-digits..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  index = number.to_s.size
  result = 0

  until index < 2
    number = rotate_rightmost_digits(number, index)
    index -= 1
  end

  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
