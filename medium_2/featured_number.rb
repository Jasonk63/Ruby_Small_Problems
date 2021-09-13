def featured(number)
  multiple = (number / 7.0).ceil * 7

  loop do
    if multiple.odd? && multiple != number
      return multiple if no_duplicate_digits?(multiple)
    elsif multiple > 9_876_543_210
      break
    end

    multiple += 7
  end

  "Error! There are no possible featured numbers after this number."
end

def no_duplicate_digits?(number)
  digits = number.to_s.chars

  digits.each do |digit|
    return false if digits.count(digit) > 1
  end

  true
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
