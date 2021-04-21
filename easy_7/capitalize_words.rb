# def word_cap(sentence)
#   sentence.split.map { |word| word.capitalize }.join(' ')
# end

# def word_cap(sentence)
#   words_array = sentence.split.map do |word|
#     word[0].upcase + word[1, word.length - 1].downcase
#   end

#   words_array.join(' ')
# end

def word_cap(sentence)
  words_array = sentence.split.map do |word|
    char_array = []
    word.chars.each_with_index do |char, index|
      char_array << char.upcase if index == 0
      char_array << char.downcase if index > 0
    end
    char_array.join
  end

  words_array.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
