items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# gather(items) do | *items, item4|
#   puts "#{items.join(', ')}"
#   puts item4
# end

# 2
# gather(items) do | item1, *items, item4|
#   puts "#{item1}"
#   puts "#{items.join(', ')}"
#   puts "#{item4}"
# end

# 3
# gather(items) do | item1, *items|
#   puts "#{item1}"
#   puts "#{items.join(', ')}"
# end

# 4
# gather(items) do | item1, item2, item3, item4|
#   puts "#{item1}, #{item2}, #{item3}, and #{item4}"
# end
