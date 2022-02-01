# your_age_in_mos.rb

# Write a program that asks the user for their age in years, and then
# converts that age to months.

print "Please enter your age in years, followed by the [Enter] key: "

age = gets.chomp.to_i

puts "You are #{age * 12} months old."