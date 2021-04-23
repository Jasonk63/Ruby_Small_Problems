print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

puts

sentence_1 = "A man uses a #{noun} to #{verb} his #{adjective} guitar #{adverb} daily."
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} to the rythym of the night"
sentence_3 = "Where does the #{adjective} #{noun} go to #{verb} #{adverb} all of the time?"

puts [sentence_1, sentence_2, sentence_3].sample
