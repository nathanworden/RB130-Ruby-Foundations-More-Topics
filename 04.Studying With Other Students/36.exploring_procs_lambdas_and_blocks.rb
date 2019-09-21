# Group 1
#1)
# What are two ways to create a proc object?
my_proc = proc { |thing| puts "This is a #{thing}." }
other_proc = Proc.new {|thing| "This is a #{thing}."}

puts my_proc
puts other_proc

#2)
# What happens when you pass no arguments to a proc, even though the proc has defined a proc parameter?
puts my_proc.call

# Answer: If nothing is passed, then `nil` is assigned to the block variable.

#3)
# What happens if you pass in more arguments to a proc than the the proc has parameters for?
puts my_proc.call('cat', 'dog')

# Answer: The proc doesn't use the extra parameters.



# Group 2
#1)
# What are two ways to create a lambda object?
my_lambda = lambda {|thing| puts "So many #{thing}s!"}
other_lambda = -> (thing){ puts "Another way to make a #{thing}."}

puts my_lambda
puts other_lambda

#2)
# What class is a lambda?
puts my_lambda.class

# Answer: Proc

#3) 
# What are the differences between a lambda and a proc?

#Answer
# Difference 1: While a Lambda is a Proc, it maintains a separate identity from a plain Proc. This can be seen when displaying a Lambda: the string displayed contains an extra "(lambda)" that is not present for regular Procs.
puts my_lambda

# Difference 2: lambda enforces the number of arguments. If the expected number of arguments are not passed to it, then an error is thrown.
# puts my_lambda.call # => This will throw an error
puts my_lambda.call('Garbanzo Bean') # This won't throw an error.


#Group 3

#1) What will this code output?
def some_method(person)
  yield
end

some_method('Fred') {|name| puts "That dude is #{name}."}

# Answer:
# That dude is .

#Why?
# If a block variable is defined, and no value is passed to it, then `nil` will be assigned to that block variable.

#2) What will this code output?
def some_method(person)
  friend = 'Tim'
  yield(person, friend)
end

some_method('Fred') {|name| puts "That dude is #{name}."}

# Answer: 
# That dude is Fred.

# Why?
# A block passed tp a method does not require the correc number of arguments. You can pass extra arguments to the block and it will not complain. 


#3) What will this code output?
def some_method(person)
  friend = 'Tim'
  yield(person, friend)
end

# some_method('Fred') 

# Answer: no block given (yield) (LocalJumpError)



# Group 4

#1) What will this code output?
def some_method(person)
  yield(person)
end

# block_method_2('Jerry') { |Jerry| puts "This is #{Jerry}."}
some_method('Jerry') do |person, friend|
  puts "This is #{person} and #{friend}."
end

# Answer:
# This is Jerry and .

# Why?
# If we pass too few arguments to a block, then the remaining ones are assigned a nil value


#2) What will this code output?

# some_method('Jerry') { puts "This is #{person}."}

# Answer:
# undefined local variable or method `person' for main:Object (NameError)











