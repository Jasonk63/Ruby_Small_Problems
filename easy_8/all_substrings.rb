def substrings(string)
  substrings = []

  string.chars.each_with_index do |_, index|
    counter = 1

    until counter > (string.length - index)
      substrings << string[index, counter]
      counter += 1
    end
  end

  substrings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
