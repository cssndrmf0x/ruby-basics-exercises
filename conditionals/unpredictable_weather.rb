# unpredictable_weather.rb

# Write an if statement that prints "The sun is so bright!"
# if sun equals 'visible'.

sun = ["visible","hidden"].sample

if sun == "visible"
  puts "The sun is so bright!"
end

# Write an unless statement that prints "The clouds are 
# blocking the sun!" unless sun equals 'visible'.

unless sun == "visible"
  puts "The clouds are blocking the sun!"
end

# When writing these statements, take advantage of Ruby's 
# expressiveness and use statement modifiers instead of an
# if...end statement to print results only when some 
# condition is met or not met.

puts "The sun is so bright!" if sun == "visible"
puts "The clouds are blocking the sun!" unless sun == "visible"