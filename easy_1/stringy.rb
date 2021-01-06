def stringy(integer)
  string = ''
  counter = 1
  loop do
    if counter.odd?
      string << '1'
    elsif counter.even?
      string << '0'
    end
    break if counter == integer
    counter += 1
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
