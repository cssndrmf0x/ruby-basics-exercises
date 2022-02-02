# make_and_model.rb

# Using the following code, write a method called car that takes two
# arguments and prints a string containing the values of both arguments.

# car('Toyota', 'Corolla')
# expected output: Toyota Corolla

def car(make, model)
  "#{make} #{model}"
end

puts car("Toyota","Corolla")