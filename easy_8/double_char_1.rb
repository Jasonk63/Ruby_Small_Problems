def repeater(string)
  double_chars = ''

  string.each_char do |char|
    double_chars << char * 2
  end

  double_chars
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
