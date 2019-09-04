
# implement the `storytime` method called below so that 
# "nothing happens here" is printed to the screen.




theDs = ["Dave", "Drew", "Dapper Dan", "Drogo the Dragon"]

storytime(theDs) do |name|
  "nothing happens here"
end

# => "nothing happens here"


# Answer: 
# def storytime(thing)
#   p yield(thing)
# end