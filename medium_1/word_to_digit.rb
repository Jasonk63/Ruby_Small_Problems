STRING_NUMBERS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
                   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

def word_to_digit(string)
  STRING_NUMBERS.each do |word, num|
    string.gsub!(/\b#{word}\b/i, STRING_NUMBERS[word])
  end

  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') ==
                'Please call me at 5 5 5 1 2 3 4. Thanks.'

p word_to_digit('Please call me at Five FIVE five One Two THREE four. Thanks.') ==
                'Please call me at 5 5 5 1 2 3 4. Thanks.'

