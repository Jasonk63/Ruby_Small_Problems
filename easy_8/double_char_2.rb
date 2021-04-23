def double_consonants(string)
  double_cons = ''

  string.each_char do |char|
    if char =~ /[bcdf-hj-np-tv-z]/i
      double_cons << char * 2
    else
      double_cons << char
    end
  end

  double_cons
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
