class Prime
  def self.nth(num)
    raise ArgumentError if num < 1
      primes = [2]
      crnt = 3
      until primes.size == num
        primes << crnt if (2..Math.sqrt(crnt)).none? {|n| crnt % n == 0}
        crnt += 2
      end
    primes.last
  end
end






# My first answer which made use of an enumerator object:

# class ArgumentError < StandardError; end

# class Prime
#   def self.nth(num)
#     raise ArgumentError if num < 1
#     prm = Enumerator.new do |y|
#       y << 2
#       crnt = 3
#       loop do
#         y << crnt if (2..Math.sqrt(crnt)).none? {|n| crnt % n == 0}
#         crnt += 2
#       end
#     end
#     prm.take(num)[-1]
#   end
# end
