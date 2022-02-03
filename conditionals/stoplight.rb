# stoplight.rb

# Write a case statement that prints "Go!" if stoplight equals 
# 'green', "Slow down!" if stoplight equals 'yellow', and 
# "Stop!" if stoplight equals 'red'.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when "green"
  puts "Go!"
when "yellow"
  puts "Slow down!"
when "red"
  puts "Stop!"
end
  
# converted to an if statement

if stoplight == "green"
  puts "Go!"
elsif stoplight == "yellow"
  puts "Slow down!"
else 
  puts "Stop!"
end

# Reformat the case statement so that it only takes up 5 lines.

case stoplight
when "green" then puts "Go!"
when "yellow" then puts "Slow down!"
when "red" then puts "Stop!" # else puts stop is also valid
end