require 'yaml'
require 'pry'

WORDS = YAML.load_file('madlibs_words.yml')

File.open('madlibs_text.txt') do |file|
  file.each do |line|
    puts format(line, adjective: WORDS[:adjectives].sample,
                      noun:      WORDS[:nouns].sample,
                      verb:      WORDS[:verbs].sample,
                      adverb:    WORDS[:adverbs].sample)
  end
end



