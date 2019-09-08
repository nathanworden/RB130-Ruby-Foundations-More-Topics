# level_1 = "outer-most variable"

# [1, 2, 3].each do |n|
#   level_2 = "inner variable"
#   puts "#{n} #{level_1}"

#   ['a', 'b', 'c'].each do |n2|
#     level_3 = "inner-most variable"
#     puts "#{n2} #{level_2}"
#     puts "#{level_3}"
#   end

#   puts "#{level_2}"
# end

# puts "#{level_1}"

def call_me(some_code)
  some_code.call
end

name = "Robert"
chunk_of_code = Proc.new {puts "hi #{name}"}
name = "Griffin III"

call_me(chunk_of_code)