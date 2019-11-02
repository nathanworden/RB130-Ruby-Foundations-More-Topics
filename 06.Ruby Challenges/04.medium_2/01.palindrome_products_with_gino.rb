class Palindromes
  def initialize(hsh)
    @hsh = hsh
    @palindromes = []
    @hsh[:min_factor] ||= 1
    @range = (@hsh[:min_factor]..@hsh[:max_factor]).to_a
    @range = @range.repeated_combination(2).to_a
  end

  attr_reader :palindromes

  def generate
    @range.select! do |tuple| 
      tuple.reduce(:*).to_s == tuple.reduce(:*).to_s.reverse
    end
    all_factors = []
    @range.each do |tuple|
      matching_tuples = [tuple]
      (0..@range.size-1).each do |i|
        if tuple.inject(:*) == @range[i].inject(:*)
          matching_tuples << @range[i]
        end
      end
      all_factors << matching_tuples.sort.uniq
    end
    all_factors.sort.uniq.each {|arr| @palindromes << Palindrome.new(arr)}
  end

  def largest
    @palindromes.sort_by {|pals| pals.value}[-1]
  end

  def smallest
    @palindromes.sort_by {|pals| pals.value}[0]
  end
end

class Palindrome
  def initialize(factors)
    @factors = factors
    @value = @factors[0].inject(:*)
  end

  attr_reader :factors, :value

  def ==(other_pal)
    self.value == other_pal.value
  end
end

# palindromes = Palindromes.new(max_factor: 99, min_factor: 10 )
# palindromes.generate
# p largest = palindromes.largest
# p largest.value
# p largest.factors