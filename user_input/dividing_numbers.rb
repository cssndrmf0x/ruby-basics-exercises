# dividing_numbers.rb

# Write a program that asks the user to enter two integers, then prints the
# results of dividing the first by the second. The second number must not be
# 0. Since this is user input, there's a good chance that the user won't 
# enter a valid integer. Therefore, you must validate the input to be sure 
# it is an integer. You can use the following code to determine whether the
# input is an integer:

=begin
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
=end

# It returns true if the input string can be converted to an integer and back 
# to a string without loss of information, false otherwise. It's not a 
# perfect solution in that some inputs that are otherwise valid (such as 003) 
# will fail, but it is sufficient for this exercise.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num = nil
denom = nil

loop do
  print "Please enter the numerator: "
  num = gets.chomp
  
  print "Please enter the denominator: "
  denom = gets.chomp
  
  break if (valid_number?(num) && valid_number?(denom))
  puts "Please enter valid input."
end

num = num.to_i
denom = denom.to_i

puts "#{num} divided by #{denom} is equal to #{num / denom}"

# launch school breaks the numerator and denominator into two separate loops
# which makes more sense - see dividing_nums_revised.rb