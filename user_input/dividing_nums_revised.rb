# dividing_nums_revised.rb

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num = nil
denom = nil

loop do
  print "Please enter the numerator: "
  num = gets.chomp

  break if valid_number?(num)
  puts "Please enter an integer for the numerator."
end

loop do
  print "Please enter the denominator: "
  denom = gets.chomp
  
  break if valid_number?(denom)
  puts "Please enter an integer other than 0 for the denominator."
end

num = num.to_i
denom = denom.to_i

puts "#{num} divided by #{denom} is equal to #{num / denom}"