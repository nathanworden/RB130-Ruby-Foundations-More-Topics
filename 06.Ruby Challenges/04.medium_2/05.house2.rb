class House
  def self.recite
    House.new.recite
  end

  def recite
    arr = pieces
    full_song = []

    previous_stanza = " #{arr.pop[0]}."
    full_song << "This is#{previous_stanza}\n"

    11.times do |num|
      stanza = ''
      the_, that_ = arr.pop

      stanza << "This is #{the_}\n"
      last_part = that_ + previous_stanza

      stanza << last_part

      previous_stanza = " " + the_ + "\n" + last_part
      full_song << stanza + "\n"
    end
    finish = full_song.join("\n")
  end

  private

  def pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built']
    ]
  end
end

# puts House.recite


# verse
# line1:
    # "This is " + the first element of the last line of arr
# line2:
    # The second element of the last line of arr
# lines3-end
    # The previous stanza (which is the verse that went into the song before)