# opposites_attract.rb

# Write a program that requests two integers from the user, adds them
# together, and then displays the result. Furthermore, insist that one
# of the integers be positive, and one negative; however, the order in
# which the two integers are entered does not matter.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num1 = nil
num2 = nil

loop do
  loop do
    print "Please enter a positive or negative integer: "
    num1 = gets.chomp
    break if valid_number?(num1)
    puts "Invalid input. Only non-zero integers are allowed."
  end
  
  loop do
    print "Please enter an integer with the opposite sign of the prior integer: "
    num2 = gets.chomp
    break if valid_number?(num2)
    puts "Invalid input. Only non-zero integers are allowed."
  end
  
  num1 = num1.to_i
  num2 = num2.to_i
  
  # break if num1 * num2 < 0 works in place here - two negative numbers multiplied
  # will always be positive, and same w/ two positive nums as well, so if it's one 
  # negative and one positive, the product will always be less than zero
  break if ((num1 > 0 && num2 < 0) || (num1 < 0 && num2 > 0))
  puts "Sorry, one integer must be positive, and one must be negative."
  puts "Please start over."
end

puts "#{num1} + #{num2} = #{num1 + num2}"