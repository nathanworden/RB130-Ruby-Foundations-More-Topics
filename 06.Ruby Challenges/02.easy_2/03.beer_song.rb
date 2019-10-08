# Problem
# Write a program that can generate the lyrics of the 99 bottles of beer song


# Generate the full lyrics
    # Create the template sentence for the 99 verses
    # create the final verse


class BeerSong
  def initialize(bottles=99)
    @bottles = bottles
  end

  def verses(verse_from, verse_to)
    lyrics.find(verse_from)
  end

  def verse(num)
    output = "#{number(num, "first")} #{bottles(num)} of beer on the wall, #{number(num)} #{bottles(num)} of beer.\n" \
    "#{take_one_down_and_pass_it_around(num)}, #{number(num - 1)} #{bottles(num - 1)} of beer on the wall.\n"
  end

  def lyrics
    (0..@bottles).to_a.reverse.map do |num|
      "#{number(num, "first")} #{bottles(num)} of beer on the wall, #{number(num)} #{bottles(num)} of beer.\n" \
      "#{take_one_down_and_pass_it_around(num)}, #{number(num - 1)} #{bottles(num - 1)} of beer on the wall.\n\n"
    end.join.rstrip << "\n"
  end

  def number(num, first=false)
    if num > 0
      num
    elsif num == 0
      if first
        "No more"
      else
        "no more"
      end
    else
      "99"
    end
  end

  def bottles(num)
    if num > 1
      "bottles"
    elsif num == 1
      "bottle"
    else
      "bottles"
    end
  end

  def take_one_down_and_pass_it_around(num)
    if num == 1
      one_it = "it" 
    else
      one_it = "one"
    end

    if num == 0
      "Go to the store and buy some more"
    else
      "Take #{one_it} down and pass it around"
    end
  end
end

# beersong = BeerSong.new.lyrics

p BeerSong.new.verse(99)