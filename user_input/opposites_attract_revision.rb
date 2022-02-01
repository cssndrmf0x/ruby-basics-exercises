# opposites_attract.rb

# Write a program that requests two integers from the user, adds them
# together, and then displays the result. Furthermore, insist that one
# of the integers be positive, and one negative; however, the order in
# which the two integers are entered does not matter.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def get_input
  loop do
    puts "Please enter a positive or negative integer: "
    num = gets.chomp
    return num.to_i if valid_number?(num)
    puts "Invalid input. Only non-zero integers are allowed."
  end
end

num1 = nil
num2 = nil

loop do
  num1 = get_input
  num2 = get_input
  
  break if num1 * num2 < 0
  
  puts "Sorry, one integer must be positive and one must be negative."
  puts "Please start over."
end

puts "#{num1} + #{num2} = #{num1 + num2}"