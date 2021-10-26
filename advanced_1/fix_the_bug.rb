def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])


# The bug is that there is no conditional for `elsif`.
# The program prints and empty array first, because the first conditional `array.empty?` evaluates to true.
# The program prints 'nil' for each subsequent time that `my_method` is run, due to the missing conditional after
# `elsif`.  Ruby goes to the next line to find the conditional expression, where `array.map` returns an array,
# which evaluates to true.  Since there is no code to execute, then it's equivalent to the expression `nil`.
