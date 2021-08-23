def balanced?(string)
  chars = string.chars
  left_parentheses = []
  right_parentheses = []

  chars.each do |char|
    left_parentheses << char if char == '('
    right_parentheses << char if char == ')'
    return false if right_parentheses.length > left_parentheses.length
  end

  left_parentheses.length == right_parentheses.length
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
