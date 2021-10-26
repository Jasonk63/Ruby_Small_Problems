matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

def rotate90(matrix)
  results = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  reverse_matrix = matrix.reverse

  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| reverse_matrix[row_index][column_index] }
    results << new_row
  end

  results
end

def rotate(matrix, degrees)
  case degrees
  when 90
    rotate90(matrix)
  when 180
    rotate90(rotate90(matrix))
  when 270
    rotate90(rotate90(rotate90(matrix)))
  when 360
    matrix
  end
end

new_matrix1 = rotate(matrix1, 90)
new_matrix2 = rotate(matrix2, 90)
new_matrix3 = rotate(matrix1, 180)
new_matrix4 = rotate(matrix2, 180)
new_matrix5 = rotate(matrix1, 270)
new_matrix6 = rotate(matrix2, 270)
new_matrix7 = rotate(matrix2, 360)

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == [[6, 9, 3], [2, 7, 4], [8, 5, 1]]
p new_matrix4 == [[8, 0, 1, 5], [2, 4, 7, 3]]
p new_matrix5 == [[8, 2, 6], [5, 7, 9], [1, 4, 3]]
p new_matrix6 == [[2, 8], [4, 0], [7, 1], [3, 5]]
p new_matrix7 == matrix2
