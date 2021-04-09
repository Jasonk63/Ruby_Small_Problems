DIGITS = {
  '0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4,
  '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9,

  'A'=> 10, 'B'=> 11, 'C'=> 12, 'D'=> 13,
  'E'=> 14, 'F'=> 15,

  'a'=> 10, 'b'=> 11, 'c'=> 12, 'd'=> 13,
  'e'=> 14, 'f'=> 15
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char]}

  value = 0
  digits.each { |digit| value = (10 * value) + digit }
  value
end

def hexadecimal_to_integer(hex)
  arr = hex.chars.reverse.map { |char| DIGITS[char] }

  dec = 0
  arr.each_with_index do |num, power|
    dec += num * (16 ** power)
  end

  dec
end

def string_to_signed_integer(string)
  number = string_to_integer(string.delete('+-'))

  case string[0]
  when '+' then number
  when '-' then -number
  else     number
  end
end

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

# p hexadecimal_to_integer('4D9f') == 19871

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

