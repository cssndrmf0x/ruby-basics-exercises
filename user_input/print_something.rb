# print_something.rb

# Write a program that asks the user whether they want the program to print
# "something", then print it if the user enters y. Otherwise, print nothing.

print "Do you want me to print something? (y/n) "

answer = gets.chomp.downcase!

while (answer != "n" && answer != "y") do
  puts "Invalid input! Please enter 'y' or 'n'!"
  print "Do you want me to print something? (y/n) "
  answer = gets.chomp.downcase!
end

puts "something" if answer == "y"

=begin
# Launch School soln.

choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'

=end