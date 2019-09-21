# class Dog
#   def initialize(name)
#     @name = name
#   end

#   def is_dog
#     "This is a dog"
#   end

#   def name
#     "This dog's name is #{name}"
#   end

#   def bark
#     "#{name} says Arf!"
#   end

# end

class Cat
  attr_accessor :name, :purr_factor 

  def initialize(name, purr_factor)
    @name = name
    @purr_factor = purr_factor
  end

  def miaow
    "#{name} is miaowing."
  end
end