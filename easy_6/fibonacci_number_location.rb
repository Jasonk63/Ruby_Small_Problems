def find_fibonacci_index_by_length(length)
  fibonacci_array = [1]
  counter = 0
  number = 1

  loop do
    fibonacci_array << number

    break if number.to_s.length == length

    number += fibonacci_array[counter]
    counter += 1
  end

  fibonacci_array.index(number) + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
