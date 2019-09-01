# # method implementation
# def test
#   yield(1, 2) # passing 2 block arguments at block invocation time
# end

# # method invocation
# test { |num| puts num } # expecting 1 parameter in block implementation



# # method implementation
# def test
#   yield(1)    # passing 1 block argument at block invocation time
# end

# # method invocation
# test do |num1, num2|     # expecting 2 parameters in block implementation
#   puts "#{num1} #{num2}"
# end


# def echo_with_yield(str)
#   yield if block_given?
#   str
# end

# p echo_with_yield("hello!")


# method implementation
# def say(words)
#   yield if block_given?
#   puts "> " + words
# end


# # method invocation
# say("hi there") do
#   system 'clear'
# end

# say("hi there")


# method implementation

def increment(number)
  if block_given?
    yield(number + 1)
  end
  number + 1
end

# method invocation

increment(5) do |num|
  puts num
end



















