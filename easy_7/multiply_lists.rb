# def multiply_list(array_1, array_2)
#   products = []
#   counter = 0

#   loop do
#     products << array_1[counter] * array_2[counter]
#     counter += 1
#     break if counter == array_1.size
#   end

#   products
# end

def multiply_list(array_1, array_2)
  array_1.zip(array_2).map { |sub_array| sub_array.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
