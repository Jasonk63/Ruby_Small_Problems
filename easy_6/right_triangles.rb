def triangle(n, right_angle_position)
  case right_angle_position
  when 'top_left'
    stars = n

    n.times do |n|
      puts '*' * stars
      stars -= 1
    end

  when 'top_right'
    spaces = 0
    stars = n

    n.times do |n|
      puts (' ' * spaces) + ('*' * stars)
      spaces += 1
      stars -= 1
    end

  when 'bottom_left'
    stars = 1

    n.times do |n|
      puts '*' * stars
      stars += 1
    end

  when 'bottom_right'
    spaces = n - 1
    stars = 1

    n.times do |n|
      puts (' ' * spaces) + ('*' * stars)
      spaces -= 1
      stars += 1
    end
  end
end

triangle(9, 'top_left')
triangle(8, 'bottom_left')
triangle(9, 'top_right')
triangle(9, 'bottom_right')
