# What does the following code output? Talk through each step to get to your answer.


p Hash[({a: 1, b: 2, c: 3}.select { |k, v| v.odd?}.keys.map.with_index {|item, index| index == 0 ? 99 : item} << [54, :tr, "56"].map {|item| item.to_s}).collect {|item| [item, item.class]}]



# Answer:

# {99=>Integer, :c=>Symbol, ["54", "tr", "56"]=>Array}