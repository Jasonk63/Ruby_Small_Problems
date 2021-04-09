def crunch(string)
  index = 0
  collapsed_chars = ''

  while index < string.length
    collapsed_chars << string[index] unless string[index] == string[index + 1]
    index += 1
  end

  collapsed_chars
end

# def crunch(string)
#   collapsed_chars = []

#   string.each_char do |char|
#     collapsed_chars << char unless collapsed_chars.last == char
#   end

#   collapsed_chars.join
# end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
