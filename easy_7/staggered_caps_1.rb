def staggered_case(string, upper_first)
  result = ''
  to_upper = upper_first
  string.chars.each do |char|
    if to_upper
      result += char.upcase
    else
      result += char.downcase
    end

    to_upper = !to_upper
  end

  result
end

p staggered_case('I Love Launch School!', false) == 'i lOvE LaUnCh sChOoL!'
p staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', false) == 'iGnOrE 77 tHe 444 nUmBeRs'
