#### Initial Solution ####
# def palindromes(string)
#   substrings = []

#   string.chars.each_with_index do |_, index|
#     counter = 2

#     until counter > (string.length - index)
#       substrings << string[index, counter] if string[index, counter] == string[index, counter].reverse
#       counter += 1
#     end
#   end

#   substrings
# end

#### Refactored Solution ####
def substrings(string)
  substrings = []

  string = string.downcase.gsub(/[^a-z0-9]/, '')
  string.chars.each_with_index do |_, index|
    counter = 1

    until counter > (string.length - index)
      substrings << string[index, counter]
      counter += 1
    end
  end

  substrings
end

def palindromes(string)
  all_substrings = substrings(string)
  results = []

  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end

  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', 'madam', 'madamdidmadam', 'ada', 'adamdidmada',
  'damdidmad', 'amdidma', 'mdidm', 'did', 'madam', 'ada',
  'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
