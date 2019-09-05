# What is arity?


# Answer: 
# The rules around enforcing the number of arguments you can call 
# a closure. In Ruby, blocks have lenient arity rules, which is why
# it doesn't complain when you pass in different number of 
# arguments; Proc objects and lambdas have different arity rules. 

# Blocks don't enforce argument count, unlike normal methods in Ruby

# "what would happen if I pass in the wrong number of arguments to a 
# block?". Would Ruby raise an ArgumentError, like it would for normal
# ethods? Let's give that scenario a try:

# method implementation
def test
  yield(1, 2)     # passing 2 block arguments at block invocation time
end

# method invocation
test {|num| puts num} # expecting 1 parameter in block implementation

# Surprisingly, the above code outputs 1. The extra block argument is 
# gnored! What if we pass in 1 less block argument, instead of 
# passing in 1 more?:

# method implementation
def test
  yield(1)    # passing 1 block argument at block invocation time.
end

# method invocation
test do |num1, num2|    # expecting 2 parameters in block implementation
  puts "#{num1} #{num2}"
end

# Even more surprisingly, this also outputs 1. But this output is 
# different from the previous one. In this case, num2 block local 
# variable is nil, so the string interpolation converted that to 
# an empty string, which is why we get 1 (there's an extra space).

# Source: https://launchschool.com/lessons/c0400a9c/assignments/5a060a20