

# def divisors(num)
#   output = []
#   (1..num).to_a.each {|ele| output << ele if num % ele == 0}
#   output
# end


# def divisors(number)
#   1.upto(number).select do |candidate|
#     number % candidate == 0
#   end
# end
require 'pry'
require 'prime'

def divisors(num)
  prime_divisors = (Prime.prime_division(num).flatten.sort << num).uniq
  divisors = prime_divisors.clone

  prime_divisors[1..-1].each do |x|
    prime_divisors[1..-1].each do |y|
      z = x * y
      divisors << z if (num % z).zero?
    end
  end

  divisors.sort.uniq
end

# def divisors(num)
#   # binding.pry
#   div = []
#   (1..(Math.sqrt(num))).each do |n|
#     if num % n == 0
#       div << n
#       div << num / n unless num == 1
#     end
#   end
#   div.sort.uniq
# end

p divisors(200)

# p divisors(1) == [1]
# p divisors(7) == [1, 7]
# p divisors(12) == [1, 2, 3, 4, 6, 12]
# p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute