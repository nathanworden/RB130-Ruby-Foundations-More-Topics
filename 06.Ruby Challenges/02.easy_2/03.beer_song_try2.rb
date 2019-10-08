# Problem
# Write a program that can generate the lyrics of the 99 Bottles of Ber Song. See test suite for the entire song.


# Examples / Test cases
# BeerSong.new.verse(99)
# expected:
# "99 bottles of beer on the wall, 99 bottles of beer.\n" \
      # "Take one down and pass it around, 98 bottles of beer on the wall.\n"

# BeerSong.new.verse(2)
# expected:
#  "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      # "Take one down and pass it around, 1 bottle of beer on the wall.\n"

# BeerSong.new.verse(1)
#expected: 
# "1 bottle of beer on the wall, 1 bottle of beer.\n" \
#       "Take it down and pass it around, no more bottles of beer on the wall.\n"

# BeerSong.new.verse(0)
# expected:
# "No more bottles of beer on the wall, no more bottles of beer.\n" \
      # "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

# BeerSong.new.verses(99,98)
# expected:
# "99 bottles of beer on the wall, 99 bottles of beer.\n" \
  # "Take one down and pass it around, 98 bottles of beer on the wall.\n" \
  # "\n" \
  # "98 bottles of beer on the wall, 98 bottles of beer.\n" \
  # "Take one down and pass it around, 97 bottles of beer on the wall.\n"


# Data Structures
# Array, String

# Algorithm
# Create a method called 'wholeSong' which is going to return an array with each element being its own verse of the song.
#     For simplicity, start the array off with the last three verses already in the array. You could do it a different way, but this is going to be the easiest to read.
# Then, 96 times add in the rest of the verses uses string interpolation for the number of bottles.   

# The `verses` method simply returns the elements indexed between the numbers requested. (Start and end verse)
# Remember that you will likely need to have the array be reversed, so the verse indexed at 0 is the `No more bottles` verse (the last one)

# The `lyrics` method returns the whole_song method joined together with a new_line between each element. (Each element already had a new line, so each verse will have two new lines except for the last one)

# The verse method:
# returns the string element at the input index


class BeerSong
  def initialize(whole_song)
    @whole_song = whole_song
  end

  def verse(index)
    whole_song[index]
  end

  def verses(from_index, to_index)
    whole_song[from_index..to_index]
  end

  def lyrics
    whole_song.reverse.join
  end

  def whole_song
    the_whole_thing = [ "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n",
      "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n\n",
      "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n\n"]
    97.times do |num|
        the_whole_thing << "#{num + 3} bottles of beer on the wall, #{num + 3} bottles of beer.\nTake one down and pass it around, #{num + 2} bottles of beer on the wall.\n\n"
    end
    the_whole_thing
  end
end




# p BeerSong.new.whole_song
# p BeerSong.new.lyrics











