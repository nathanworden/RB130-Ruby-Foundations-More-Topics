# Problem, write a zip array method which takes two arrays and returns a new array (do not mutate the original array.)

# Algorithm
# Method accepts two arrays
# Initalize a new empty array called `result`
# Loop through the following array size times"
# Push the first element of the first array to result
# Push the first element of the second arry to the result array.
# Return the new array

def zip(arr1, arr2)
  result = []
  0.upto(arr1.size - 1) do |num|
    result << [arr1[num], arr2[num]]
  end
  result
end


# Example
# p arr1 = [1, 2, 3]
# p arr1.object_id

p zip(arr1, [4, 5, 6]) #== [[1, 4], [2, 5], [3, 6]]

# p arr1
# p arr1.object_id