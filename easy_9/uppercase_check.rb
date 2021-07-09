# Overly complicated first solution

# def uppercase?(string)
#   characters = string.gsub(/[^a-zA-Z]/, '')

#   characters.each_char do |character|
#     return false if character =~ /[a-z]/
#   end

#   true
# end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
