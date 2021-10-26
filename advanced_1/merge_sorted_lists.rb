def merge(array1, array2)
  array1_copy = array1.dup
  array2_copy = array2.dup
  merged_array = []

  loop do
    if array1_copy.empty?
      merged_array.concat(array2_copy)
      break
    elsif array2_copy.empty?
      merged_array.concat(array1_copy)
      break
    end

    case array1_copy.first < array2_copy.first
    when true
      merged_array << array1_copy.shift
    when false
      merged_array << array2_copy.shift
    end
  end

  merged_array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

arr1 = [1, 1, 3]
arr2 = [2, 2]

merge(arr1, arr2)

p arr1 == [1, 1, 3]
p arr2 == [2, 2]

