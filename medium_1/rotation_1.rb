# First Attempt
# def rotate_array(array)
#   index = 1
#   rotated_array = []

#   loop do
#     if index == array.size
#       rotated_array << array[0]
#       break
#     end
#     rotated_array << array[index]
#     index += 1
#   end

#   rotated_array
# end

# Launch School solution
def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]
p x == [1, 2, 3, 4]
