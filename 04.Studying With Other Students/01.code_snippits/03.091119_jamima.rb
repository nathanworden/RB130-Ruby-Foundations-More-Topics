# What is the difference between a proc and a lambda?

def return_from_lambda
  a = lambda { return 10 }.call
  puts "The lambda returned #{a}, and this will be printed."
end

def return_from_proc
  a = Proc.new { return 10 }.call
  puts "This will never be printed."
end

return_from_lambda
return_from_proc



=begin
  
# What is the difference between a proc and a lambda?


def return_from_proc
  a = Proc.new { return 10 }.call
  # 1.times { return 10 }
  puts "This will never be printed."
end

def return_from_lambda
  a = lambda { 
    return 10 
    puts 'will not print' 
  }.call
  puts "The lambda returned #{a}, and this will be printed."
end

p return_from_proc

p return_from_lambda
  
end



# New thing

my_name = 'Jemima'
# my_method

proc = Proc.new {
  puts my_method
  puts my_name
}

def my_method
  'My method'
end
  
proc.call