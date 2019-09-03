def compare(str)
  puts "Before: #{str}"
  after = yield(str)
  puts "After: #{after}"
end


compare('hello') {|word| word.upcase}

puts 

compare ('hello') {|word| word.slice(1..2)}

puts

compare ('hello') {|word| "nothing to do with anything"}

puts 

compare ('hello') {|word| puts "hi"}