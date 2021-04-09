def century(year)
  century = (year / 100) + 1 
  century = century - 1 if year % 100 == 0
  case century % 100
  when 11, 12, 13
    return century.to_s + 'th'
  end
  case century % 10
  when 1
    century.to_s + 'st'
  when 2
    century.to_s + 'nd'
  when 3
    century.to_s + 'rd'
  else
    century.to_s + 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
