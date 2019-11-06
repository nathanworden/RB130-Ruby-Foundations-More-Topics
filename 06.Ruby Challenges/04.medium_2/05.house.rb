# Write a program that outputs the nursery rhyme.
# 12 verses

# Initialize a current sentence array
# Initialize a current verse array
# Initialize an overall_song array


# Prepend "This is the" to the beginning of the current sentence.
# Push the current sentence to the current verse.
# If the current sentence has just one elemet in its array, append a '.' to that sentence and push the current verse to the overall song. 

# If the current sentence has two elements:
    # take the second element and prepend it to the first element of the next sentence and push that sentence to the current verse.

# Join each sentence with a newline character.
# Join each verse with a newline character.
# Return the result

class House
  def self.recite
    overall_song = []
    lines = 12

    all_verses = House.new.access

    until lines <= 0
      stanza = []
      lines.times do |n|
        if n == 0
          first_verse = [] << "This is " + all_verses[n][0]
          stanza << first_verse
        else
          next_verse = [] << all_verses[n-1][1] + " " + all_verses[n][0]
          next_verse[0] << ".\n" if n == lines - 1
          stanza << next_verse
        end
      end
      stanza[0][0] << ".\n" if lines == 1
      overall_song << stanza
      all_verses.shift
      lines -= 1
    end

    puts overall_song.reverse.join("\n")
  end

  def access
    pieces
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

# binding.pry
House.recite