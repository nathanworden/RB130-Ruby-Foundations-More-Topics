p [5, 10, 15, 20].reduce(67, :+)
# => 117


p [2, 8, 3].reduce(2, :*)
# => 96

p (10..12).inject(:-)
# => -13

p ["this", "is", "out", "of"].reduce('order', :+)
# => "orderthisisoutof"


arr = ["this", "is", "out", "of"]
p(arr.reduce('orange juice') do |memo, obj|
  if arr.last == obj
    memo + " " + obj
  else
    "#{memo} #{obj}"
  end
end)
#  => "orange juice this is out of"


arr = [10, 10, 10]
def add_5(num)
  num + 5
end

p (arr.reduce(20) do |memo, obj|
  memo + add_5(obj)
end)
#  => 65


# arr = [10, 10, 10]
# def add_5(num)
#   num + 5
# end

# p arr.reduce(20) do |memo, obj|
#   memo + add_5(obj)
# end
# => 20 is not a symbol nor a string (TypeError)











