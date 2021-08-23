def letter_percentages(string)
  count = {}
  percentages = {}
  characters = string.chars
  char_count = characters.length.to_f

  count[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  count[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  count[:neither] = characters.count { |char| char =~ /[^a-zA-Z]/}

  calculate_percentages(percentages, count, char_count)

  percentages
end

def calculate_percentages(percentages, count, char_count)
  count.each do |type, num|
    percentages[type] = format("%.1f", ((num / char_count) * 100)).to_f
  end

  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI') == {:lowercase=>66.7, :uppercase=>33.3, :neither=>0.0}
