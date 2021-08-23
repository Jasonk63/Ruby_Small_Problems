SPELLING_BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
                   ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
                   ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(word)
  matching_blocks = []
  up_word = word.upcase

  up_word.chars.each do |letter|
    SPELLING_BLOCKS.each do |block|
      matching_blocks << block if block.include?(letter)
    end
  end

  word.size == matching_blocks.uniq.size
end

binding.pry

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
