class Dog
  
  def initialize(name)
    @name = name
  end
  
  def ==(other)
    self.equal?(other)
  end
end

fluffy = Dog.new("Fluffy")
other = Dog.new("Fluffy")

p fluffy == other # false




=begin
# RB130

def call_me(some_code)
  some_code.call
end

name = "Robert"
chunk_of_code = Proc.new {puts "hi #{name}"}
name = "Griffin III"

call_me(chunk_of_code)




#3)
def first_method(&block)
  second_method(block)
end

def second_method(block)
  third_method(&block)
end

def third_method(&block)
  block.call
end

first_method { puts "hello!" }
# "hello!"


within a method definition: & => converts a block to a Proc
within a method invocation: & => (checks wehther you're a Proc and if not, tires to convert you to one)
 so it converts the Proc to a block


 # Another way to put this one:
 def block_to_proc_method(&block_to_proc)
  proc_to_block_method(block_to_proc)
end

def proc_to_block_method(proc_to_block)
  call_the_block_to_proc(&proc_to_block)
end

def call_the_block_to_proc(&block_to_proc)
  block_to_proc.call
end

block_to_proc_method { puts "hello!" }

# method definition: & => converts a block to a Proc
# method invocation: & => (checks whether you're a Proc and if not, tries to convert you to one) 
                        # converts the Proc to a block
=end


# #4) 
# # - Why is that sometimes the code in the block affects the return value of the method, and sometimes not?


# 3.times { |n| puts n }
# # => 3

# [1, 2, 3].map { |n| n + 1 }
# # => [2, 3, 4]



