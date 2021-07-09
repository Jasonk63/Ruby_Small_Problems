def top_diamond(n)
  spaces = n / 2
  stars = 1

  while spaces > 0
    line = ''

    spaces.times { line << ' ' }
    stars.times { line << '*' }
    puts line

    spaces -= 1
    stars += 2
  end
end

def bottom_diamond(n)
  spaces = 0
  stars = n

  while stars > 0
    line = ''

    spaces.times { line << ' ' }
    stars.times { line << '*' }
    puts line

    spaces += 1
    stars -= 2
  end
end

def diamond(n)
  top_diamond(n)
  bottom_diamond(n)
end

diamond(9)
