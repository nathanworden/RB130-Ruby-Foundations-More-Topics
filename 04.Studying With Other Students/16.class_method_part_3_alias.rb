# What will this code output?

class User
  def full_name
    puts "Chris Lee"
  end


  def self.add_rename
    alias_method :name, :full_name
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







# Launch School


# `name` is now an alias for `full_name`, and it picks the 'full_name`
# method defined in the 'Developer` class