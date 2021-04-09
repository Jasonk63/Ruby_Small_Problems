def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0

  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end

  sum
end

# def multisum(num)
#   counter = 3
#   multiples = []
#   loop do
#     if counter % 3 == 0 || counter % 5 == 0
#       multiples << counter
#     end
#     break if counter == num
#     counter += 1
#   end

#   multiples.inject(:+)
# end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
