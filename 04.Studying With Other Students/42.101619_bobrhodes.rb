class Dog
  def initialize(name)
  @name = name
  end
  
  def name
  name # don't need self here, I forgot
  end
​
  def new_name(name)
  self.name = name
  end
end
​
rover = Dog.new
p rover.new_name("Rover")