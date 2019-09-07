# What will this code output?

class User

  def full_name
    puts "Chris Lee"
  end

  def self.add_rename
    alias :name :full_name
  end
end

class Developer < User
  def full_name
    puts "Launch School"
  end

  add_rename
end

Developer.new.name



















# Answer:







# Chris Lee

# Explination:
# With the usage of alias the method “name” is not able to pick the
#  method “full_name” defined in Developer.

# This is because alias is a keyword and it is lexically scoped. 
# It means it treats self as the value of self at the time the source 
# ode was read . In contrast alias_method treats self as the value 
# determined at the run time.




