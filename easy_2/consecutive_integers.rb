def compute_sum(number)
  (1..number).inject { |sum, n| sum + n }
end

def compute_product(number)
  (1..number).inject(1, :*)
end

integer = ''
answer = ''

loop do
  puts "=> Please enter an integer greater than 0 :"
  integer = gets.chomp.to_i

  if integer <= 0 
    puts "=> Invalid input! Please enter an integer greater than 0."
  else
    break
  end
end

loop do 
  puts "=> Enter 's' to compute the sum, 'p' to compute the product :"
  answer = gets.chomp

  if answer.downcase == 's' || answer.downcase == 'p'
    break
  else
    puts "=> Invalid input! Please enter 's' or 'p'."
  end
end

if answer.downcase == 's'
  puts "The sum of the integers between 1 and #{integer} is #{compute_sum(integer)}."
else
  puts "The product of the integers between 1 and #{integer} is #{compute_product(integer)}."
end

