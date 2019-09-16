# The drop_while method returns all the elements of a collection, except those elements at the beginning of the Array that produce a truthy value when passed to the block.

# Below are two different ways to implement this method on an array. One uses Array#each and the other uses a while loop.

# Why would you choose to use a while loop instaed of the #Array#each method in this situation?

# Array#each version
def drop_while(arr)
  result = []
  new_array = false
  arr.each do |element|
    new_array = true if !yield(element)
    result << element if !yield(element) || new_array == true
  end
  result
end

# `while loop` version
def drop_while(array)
  index = 0
  while index < array.size && yield(array[index])
    index += 1
  end

  array[index..-1]
end









# Answer

# `while` makes it obvious that we want to stop prematurely, since we know that we may not be iterating through the entire Array.