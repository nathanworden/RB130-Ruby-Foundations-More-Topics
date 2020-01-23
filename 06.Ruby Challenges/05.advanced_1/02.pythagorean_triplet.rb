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
    @input_hsh = hsh
    if hsh.keys.include?(:min_factor)
      has_lower_bound
    elsif hsh.keys.include?(:sum)
      deconstruct_sum
    else
      self.lower_bound_is_zero
      self
    end
  end 

  def self.lower_bound_is_zero
    rng = (1..@input_hsh[:max_factor]).to_a

    # d = rng[0]
    # e = rng[1]
    # f = rng[2]
    d = 3
    e = 4
    f = 5

    until d == rng[-1]
      if d**2 + e**2 == f**2
        a = d
        b = e
        c = f
      end

      d += 1
    end
    d
  end

end

triplets = Triplet.where(max_factor: 10)
p triplets
products = triplets.map(&:product).sort
p products

# Triplet.where(min_factor: 11, max_factor: 20)
# p Triplet.where(sum: 180, max_factor: 100)



# Problem:
# Determine whether a set of three numbers is a pythagorean triplet.
# That is: a^2 + b^2 = c^2

# where
# where is a class method
# where accepts a hash with a symbol and an integer.
# Where has two parameters, a default value of 0 and a max factor.

# For every number squared
# add it to every other number squared (one at a time)
# And check if that equals any other number squared.


# Is d^2 + e^2 = f^2 ?


