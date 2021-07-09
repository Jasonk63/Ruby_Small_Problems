def sequence(number)
  if number > 0
    1.upto(number).to_a
  elsif number < 0
    -1.downto(number).to_a
  else
    [0]
  end
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(0) == [0]
p sequence(-1) == [-1]
p sequence(-3) == [-1, -2, -3]
p sequence(-5) == [-1, -2, -3, -4, -5]

