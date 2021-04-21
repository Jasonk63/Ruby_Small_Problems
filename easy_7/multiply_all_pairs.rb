def multiply_all_pairs(array_1, array_2)
  product = []

  array_1.each do |num1|
    array_2.each do |num2|
      product << num1 * num2
    end
  end

  product.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
