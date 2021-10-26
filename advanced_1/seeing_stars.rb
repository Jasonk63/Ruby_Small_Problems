def star(n)
  num_spaces = (n - 3) / 2
  rows = (n - 1) / 2
  spaces = ''

  rows.times do |num|
    first_space = ' ' * num
    spaces = ' ' * num_spaces
    puts first_space + '*' + spaces + '*' + spaces + '*'
    break if num_spaces == 0
    num_spaces -= 1
  end

  puts '*' * n

  (rows - 1).downto(0) do |num|
    first_space = ' ' * num
    spaces = ' ' * num_spaces
    puts first_space + '*' + spaces + '*' + spaces + '*'
    num_spaces += 1
  end
end

star(9)

