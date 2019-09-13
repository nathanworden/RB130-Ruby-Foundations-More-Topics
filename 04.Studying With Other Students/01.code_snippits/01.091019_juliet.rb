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



#############################


# - What will the following expressions (`arr1` and `arr2`) return?


arr1 = ['a', 'b', 'c']
arr2 = arr1.dup
p arr1[0].equal? arr2[0]

arr2.map! { |char| char.upcase }

p arr1
p arr2

p arr1[0].equal? arr2[0]


# ['a', 'b', 'c']
# ['A', 'B', 'C']



########## 


# - How can I know if an object is an instance of a class or its subclasses?

dog = "doggy"


# p dog.class.ancestors
p 5.kind_of?(Numeric)
p 5.instance_of?(Integer)


########


def my_method
  yield(2)
end

a_proc = :to_s.to_proc
# p a_proc
# p &a_proc

p my_method(&a_proc)

# { |n| n.to_s }


############

# wirte out line by line what happens here:

def say(words)
  yield if block_given?
  puts 'W ' + words
end

say('hi there') do
  puts "dog dog"
end



# method invocation begins on line 6 when the say method is invoked with the string 'hi there' passed in as an argument and a block.

# On line 1 the paramer words is assinged to the string 'hi there'. And the block is passed in implicitly without being assigned to a variable.


# On line 2, we check if a block is given, and it is, so we yeiled to the block.

# the block clears the screen on line 7. Then returns to line 3.

# On line 3 we print out the charter 'W ' along with the string 'hi there'

# Execution ends

# Ruturn value is nil because the last line of code uses puts




