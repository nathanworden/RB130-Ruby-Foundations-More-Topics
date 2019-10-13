#1 
# Return an array of just the elements that are less than 3.

a = [1, 2, 3, 4, 5, 0]

p a.select {|i| i < 3}


#2
# Return an array of elements that are less than 3 up until you hit an element that is 3 or more. Once you hit this, stop checking and just return the elements so far.

p a.take_while {|i| i < 3}

#3 
# Return an array of just the elements before the elemet 4

p a.take_while {|i| i != 4}
# p a.select.with_index {|_, index| index < 3}


#4 
# Return an array of all the animals before "anotherdog" that have "dog" in their name.
a = ["cat", "dog", "catdog", "shark", "anotherdog", "catattack", "dogdog"]

p a.select {|i| i.include?('dog')}#.take_while {|i| i != "anotherdog"}
