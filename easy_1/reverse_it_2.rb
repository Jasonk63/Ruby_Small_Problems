def reverse_words(string)
  words = string.split
  words.each { |word| word.reverse! if word.length > 4 }
  words.join(" ")
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
