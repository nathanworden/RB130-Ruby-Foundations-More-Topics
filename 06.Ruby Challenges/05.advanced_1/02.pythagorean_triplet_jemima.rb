class Triplet
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  attr_accessor :a, :b, :c

  def sum
    a + b + c
  end

  def product
    a * b * c
  end

  def pythagorean?
    a**2 + b**2 == c**2
  end

  def self.where(hsh)
    min_factor = hsh[:min_factor] || 1
    rng = (min_factor..hsh[:max_factor]).to_a.combination(3)
    output = []

    rng.each do |num_arr|
      triplet =  Triplet.new(*num_arr)

      next if hsh[:sum] && hsh[:sum] != triplet.sum   

      output << triplet if triplet.pythagorean?
    end

    output
  end
end