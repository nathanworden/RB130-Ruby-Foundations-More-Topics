# p Hash[({a: 1, b: 2, c: 3}.select { |k, v| v.odd?}.keys << [54, :tr, "56"].map {|item| item.to_s}).collect {|item| [item, item.class]}]


p Hash[({a: 1, b: 2, c: 3}.select { |k, v| v.odd?}.keys.map.with_index {|item, index| index == 0 ? 99 : item} << [54, :tr, "56"].map {|item| item.to_s}).collect {|item| [item, item.class]}]



# p({a: 1, b: 2, c: 3}.select { |k, v| v.odd?}.keys.map.with_index {|item, index| index == 0 ? 99 : item})