print "What is the bill? : "
bill = gets.chomp.to_f

print "What is the tip percentage? : "
tip_percentage = gets.chomp.to_f

tip = (bill * (tip_percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format("%0.2f", tip)}"
puts "The total is $#{format("%0.2f", total)}"
