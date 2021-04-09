# def evens(array)
#   evens = []

#   array.each_with_index { |element, index| evens << element if index.odd? }

#   evens
# end

# def evens(array)
#   even = []
#   index = 1

#   while index < array.size
#     even << array[index]
#     index += 2
#   end

#   odd
# end

def evens(array)
  array.select.with_index { |_, index| index.odd? }
end

puts evens([2, 3, 4, 5, 6]) == [3, 5]
puts evens([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
puts evens(['abc', 'def']) == ['def']
puts evens([123]) == []
puts evens([]) == []
