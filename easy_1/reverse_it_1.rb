def reverse_sentence(sentence)
  reverse = ''
  return reverse if sentence == ''
  split = sentence.split
  counter = split.length - 1
  
  loop do
    reverse = reverse + split[counter]
    
    if counter != 0
      reverse += ' '
    elsif counter == 0
      break
    end 
    counter -= 1
  end
  reverse
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
