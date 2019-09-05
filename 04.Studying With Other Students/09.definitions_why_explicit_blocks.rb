# Why are explicit blocks helpufl? Please give an example.


# Answer

# It provides additional flexibility. Before with the implicit block, 
# e didn't have a handle (a variable) for the implicit block, so we 
# couldn't do much with it except yield to it and test whether a block
# as provided. Now we have a variable that represents the block, so 
# we can pass the block to another method:


def test2(block)
  puts "hello"
  block.call
  puts "good-bye"
end

def test(&block)
  puts "1"
  test2(block)
  puts "2"
end

test {puts "xyz" }
# => 1
# => hello
# => xyz
# => good-bye
# => 2

# Source: https://launchschool.com/lessons/c0400a9c/assignments/5a060a20