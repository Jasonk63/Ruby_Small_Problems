def palindrome?(string)
  string.reverse == string
end

def real_palindrome?(string)
  string = string.downcase.gsub(/[[:punct:]]/, '').gsub(' ', '')
  palindrome?(string)
end


# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
