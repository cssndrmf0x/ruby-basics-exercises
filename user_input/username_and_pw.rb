# username_and_pw.rb

# In the previous exercise, you wrote a program to solicit a password. In this
# exercise, you should modify the program so it also requires a user name. The
# program should solicit both the user name and the password, then validate
# both, and issue a generic error message if one or both are incorrect; the
# error message should not tell the user which item is incorrect.

USER_NAME = "cassie"
PASSWORD = "password"

loop do
  print "Please enter your user name: "
  user = gets.chomp
  
  print "Please enter your password: "
  pw = gets.chomp
  
  break if (pw == PASSWORD && user == USER_NAME)
  puts "Authorization failed!"
end

puts "Welcome!"