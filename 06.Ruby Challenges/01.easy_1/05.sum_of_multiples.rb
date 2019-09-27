class SumOfMultiples
  def initialize(*args)
    @nums = args
  end

  def self.to(limit)
    (1...limit).to_a.delete_if { |num| num % 3 != 0 && num % 5 != 0 }.sum
  end

  def to(limit)
    all_multiples = []
    @nums.each { |num| all_multiples << multiples_of_x_up_to(num, limit) }
    all_multiples.flatten.uniq.sum
  end

  def multiples_of_x_up_to(x, limit)
    multiples = [x]
    sum = x
    loop do
      break if sum + x >= limit
      sum += x
      multiples << sum
    end

    multiples
  end
end




# require 'pry'
# class SumOfMultiples
#   binding.pry
#   def self.to(limit, multiples = [3, 5])
#     (0...limit).select do |number|
#       multiples.any? { |multiple| number % multiple == 0 }
#     end.reduce(:+)
#   end

#   def initialize(*multiples)
#     @multiples = multiples
#   end

#   def to(limit)
#     self.class.to(limit, @multiples)
#   end
# end

# thing = SumOfMultiples.to(20)