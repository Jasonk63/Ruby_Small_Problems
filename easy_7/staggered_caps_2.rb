def staggered_case(string)
  result = ''
  to_upper = true
  string.chars.each do |char|
    if char =~ /[a-zA-Z]/
      if to_upper
        result += char.upcase
      else
        result += char.downcase
      end

      to_upper = !to_upper
    else
      result += char
    end
  end

  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
