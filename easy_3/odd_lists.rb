# def oddities(array)
#   odd = []

#   array.each_with_index { |element, index| odd << element if index.even? }

#   odd
# end

# def oddities(array)
#   odd = []
#   index = 0

#   while index < array.size
#     odd << array[index]
#     index += 2
#   end

#   odd
# end

def oddities(array)
  array.select.with_index { |_, index| index.even? } 
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
