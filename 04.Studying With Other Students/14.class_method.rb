# What will this code output?

class User

  def full_name
    puts "Chris Lee"
  end

  def weird_method
    puts "what does this do?"
  end
end

class Developer < User
  def full_name
    puts "Launch School"
  end
  weird_method
  puts "a new Developer has been born"
end

Developer.new



















# Answer



# undefined local variable or method `weird_method' for Developer:Class (NameError)










