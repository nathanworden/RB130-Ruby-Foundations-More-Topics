# def welcome(str)
#   puts str + " " + yield
# end

# def welcome(str)
#   puts "#{str} #{yield}"
# end

# def welcome(str)
#   puts yield(str)
# end

p [2, 3, 5].inject(1, &:+)

# p [2, 3, 5].inject(1) {|total, num| num + num }
p [2, 3, 5].inject(1) {|total, num| total + num}