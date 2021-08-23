text = File.read('pg84.txt')

sentences = text.split(/(?<=\.|\?|!)\s*/)

longest_sentence = ''
longest_sentence_length = sentences.map { |sentence| sentence.split.size }.max

sentences.each do |sentence|
  longest_sentence = sentence if sentence.split(' ').size == longest_sentence_length
end

puts 'The longest sentence is:'
puts
puts longest_sentence
puts
puts "It is #{longest_sentence_length} words long"

