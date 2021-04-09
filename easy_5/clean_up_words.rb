ALPHABET = ('a'..'z').to_a

def cleanup(string)
  string.gsub(/[^a-z]/i, " ").squeeze(' ')
end

# def cleanup(string)
#   clean_characters = []

#   string.chars.each do |char|
#     if ALPHABET.include?(char)
#       clean_characters << char
#     else
#       clean_characters << ' ' unless clean_characters.last == ' '
#     end
#   end

#   clean_characters.join
# end

p cleanup("---what's my +*& line?") == ' what s my line '
