def letter_case_count(string)
  counts_hash = {}
  characters = string.chars
  counts_hash[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts_hash[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts_hash[:neither] = characters.count { |char| char =~ /[^a-zA-Z]/ }

  counts_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
