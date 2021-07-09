def buy_fruit(list)
  fruits = []

  list.each do |item, quantity|
    quantity.times do
      fruits << item
    end
  end

  fruits
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
