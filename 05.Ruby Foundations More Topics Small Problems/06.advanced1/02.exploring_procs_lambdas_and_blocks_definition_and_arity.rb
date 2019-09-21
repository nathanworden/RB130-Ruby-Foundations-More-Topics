# Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

# First we assign a proc to local variable 'my_proc'
# Nexts we print out my_proc, which prints out a proc object
# On line 4 we call `class` on the `my_proc` object, which prints out `Proc`
# On line 5 we call the proc itself, but don't pass anything in. This prints out the contents of proc but `thing` is nil, so it is left blank in the print out.
# On line 6 we call the proc itself and pass in `cat`. `cat` is assigned to the proc parameter `thing` so that thing can be used in the proc when we print out the string

# # Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# Apparantly you can create a lambda with the syntax on line 16 and it is the same as line 15
# Apparently lambdas are Proc objects. You can see this when you puts out my_lambda and  my_second_lambda on lines 17 and 18
# Yes, line 19 shows that lamndas are proc objects
# Just like the proc, calling `call` on my_lambda and passing in 'dog' passes this as a proc parameter to the proc to be used
# However, the difference between a proc and a lamnda is that procs have leinent airty rules, whereas lambdas have strict airty rules.
# Procs will still run if you call them without a proc paramerter. But a lmanda will throw an error.
# Line 22 shows that Lamndas aren't their own class. There isn't a way to create a new Lambda object. Instead you create a proc object using lambda. Lambda.new will throw an error.

# # Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

# If your method yields to a block, you need to call the method with a block.

# # Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}


# Blocks don't mind if you don't pass it a second block argument even if it calls for it,
# But the block needs to define a block parameter if you are going to pass it anything.


# Final Analysis:

# Lambdas have the most strict airty rules. They will throw an error
# If you give an incorrect number of arguments. Procs will still run
# Blocks have lenient airty rules, but you still need to define a block
# parameter if in the block you are going to call a block local variable.








