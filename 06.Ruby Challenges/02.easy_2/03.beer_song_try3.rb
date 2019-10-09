# Problem
# verse(number)
  # (99..3)
  # 2
  # 1
  # 0
# verses(starting_number, ending_number)
    # map from number to verse(number)
    # join
# lyrics
  # verses(99, 0)


  class BeerSong
    def verse(number)
      case
      when (3..99).include?(number)
        result = "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
        "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
      when number == 2
        result = "2 bottles of beer on the wall, 2 bottles of beer.\n" \
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"
      when number == 1
        result = "1 bottle of beer on the wall, 1 bottle of beer.\n" \
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
      when number == 0
        result = "No more bottles of beer on the wall, no more bottles of beer.\n" \
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      end

      result
    end

    def verses(starting_number, ending_number)
      (ending_number..starting_number).map {|num| verse(num)}.reverse.join("\n")
    end

    def lyrics
      verses(99, 0)
    end
  end

  # p BeerSong.new.verses(99, 98)