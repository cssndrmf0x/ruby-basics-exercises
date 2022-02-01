# ls_printer.rb

# Write a program that prints 'Launch School is the best!' repeatedly until 
# a certain number of lines have been printed. The program should obtain the 
# number of lines from the user, and should insist that at least 3 lines are 
# printed.

repeats = nil

loop do
  loop do
    print "How many lines should we print? Enter a number greater than 2, or Q to quit: "
    repeats = gets.chomp
  
    break if (repeats.to_i > 2 || repeats.downcase == 'q')
  
    puts "That's not enough lines. Try again."
  end
  
  break if repeats.downcase == 'q'
  repeats = repeats.to_i
  
  repeats.times { puts "Launch School is the best!" }
end