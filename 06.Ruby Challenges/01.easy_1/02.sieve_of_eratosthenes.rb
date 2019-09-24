# Use the Sieve of Eratostehenes to find all the primes from 2 up to a given number.

# (2..limit)

# Repeat:
# Take the next available unmarked number in your list it is (prime)
# Mark all the multiples of that number (they are not prime)


# Algorithm
# Define a class which accepts an integeer `num` when instantiated.
# counter = 1
# create a loop
# increment counter by 1
# Is the key at this counter unmarked?
# If no, next.
# If yes:
    # Mark all the multiples of trhat number up to the limit
        #

# My Answer:

class Sieve
 attr_accessor :limit, :hsh

  def initialize(limit)
    @limit = limit - 1
    @hsh = Hash.new {|hash, key| hash[key] = ''}
  end

  def primes
    limit.times {|num| @hsh[num + 2]}
    counter = 1
    loop do
      counter += 1
      break if hsh.keys[-1] == counter
      next if hsh[counter] == 'X'
      hsh.each do |key, value| 
        if key % counter == 0
          hsh[key] = 'X' unless key == counter
        end
      end
    end
    hsh.select {|key, value| value != 'X'}.keys
  end
end

def test
  puts "what"
end

p test

# # test = Sieve.new(1000)
# test = Sieve.new(10)
# p test.primes


# Book Answer:
# class Sieve
#   attr_reader :range

#   def initialize(last_num)
#     @range = (2..last_num).to_a
#   end

#   def primes
#     range.each do |prime|
#       range.reject! {|num| (num != prime) && (num % prime == 0)}
#     end
#     range
#   end
# end





# Another student answer

# class Sieve
#   attr_reader :numbers

#   def initialize(limit)
#     @numbers = [*(2..limit)]
#   end

#   def primes
#     primes = []

#     while (prime = numbers.delete_at(0))
#       primes << prime
#       numbers.delete_if { |number| number % prime == 0 }
#     end

#     primes
#   end
# end

# Basiclly, their answers are smart because they identified that:
# When you start, the current number you are on is always prime. Keep that one and delete the other multiples of that number.

require 'pry'

class Sieve
  def initialize(limit)
    @limit = limit
    @stop = Math.sqrt(@limit).ceil
  end

  def primes
    binding.pry
    list = (0..@limit).to_a
    (2..@stop).each do |step|
      counter = step * 2
      until counter > list.length - 1
        list[counter] = 0
        counter += step
      end
    end
    list.delete(0)
    list.delete(1)
    list
  end
end

test = Sieve.new(10)
test.primes




