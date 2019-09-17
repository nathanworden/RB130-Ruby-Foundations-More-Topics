def passparam(arr)
  yield(arr)
end

arr = ['daniel', 'kaluah', 'nathan', 'joshua']

passparam(arr) do |_, _, *people| 
  puts "People: #{people.join(', ')}."
end