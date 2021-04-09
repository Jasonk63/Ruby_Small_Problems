DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  string = ''

  number.digits.reverse.each do |digit|
    string << DIGITS[digit]
  end

  string
end

def signed_integer_to_string(number)
  string_number = integer_to_string(number.abs)

  case number <=> 0
  when - 1 then "-#{string_number}"
  when + 1 then "+#{string_number}"
  else          string_number
  end
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
