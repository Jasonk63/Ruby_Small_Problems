matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# Original Attempt
#--------------------------
# def transpose(matrix)
#   new_matrix = []
#   index = 0

#   loop do
#     inner_array = []

#     matrix.each do |array|
#       inner_array << array[index]
#     end

#     new_matrix << inner_array
#     index += 1

#     break if index > (matrix.size - 1)
#   end

#   new_matrix
# end


# Launch School Solution
#----------------------------

def transpose(matrix)
  result = []

  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end

  result
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
