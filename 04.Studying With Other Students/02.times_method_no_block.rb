
def times(number)
  counter = 0
  while counter < number do
    yield(counter)
    counter += 1
  end

  number      # return the original method argument to match behavior of `Integer#times`
end


times(5)

# What happens when you call the `times` method above on line 13
# without a block?

# A) IOError
# B) LocalJumpError
# C) No error, but also no output
# D) ArgumentError: wrong number of arguments (given 1, expected 2)
# E) NameError: undefined local variable or method


# Answer:
# no block given (yield): LocalJumpError