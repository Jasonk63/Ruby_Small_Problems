def dashes(length)
  '-' * length
end

def spaces(length)
  ' ' * length
end

def print_in_box(text)
  length = text.size

  if length > 77
    text =  text[0, 76]
    length = 76
  end

  puts "+-#{dashes(length)}-+"
  puts "| #{spaces(length)} |"
  puts "| #{text} |"
  puts "| #{spaces(length)} |"
  puts "+-#{dashes(length)}-+"
end

print_in_box('To boldy go where no one has gone before.')
