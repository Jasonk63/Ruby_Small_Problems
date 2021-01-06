SQFEET_TO_SQINCHES = 12
SQFEET_TO_SQCENTIMETERS = 30.48

puts "Enter the length of the room in feet: "
length = gets.chomp.to_f

puts "Enter the width of the room in feet: "
width = gets.chomp.to_f

square_feet = (length * width).round(2)
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_centimeters = (square_feet * SQFEET_TO_SQCENTIMETERS).round(2) 

puts "The area of the room is #{square_feet} square feet 
  (#{square_inches} square inches / #{square_centimeters} square centimeters )."
