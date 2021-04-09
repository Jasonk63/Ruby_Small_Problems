def xor?(arg_1, arg_2)
  if arg_1 && arg_2 == false
    return true
  elsif arg_1 == false && arg_2
    return true
  else
    return false
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false


# In this exercise, you will write a function named xor that takes two arguments, 
# and returns true if exactly one of its arguments is truthy, false otherwise. 

# Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.
