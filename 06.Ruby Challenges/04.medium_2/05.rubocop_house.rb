class House
  def self.recite
    overall_song = []
    lines = 12

    all_verses = House.new.access

    until lines <= 0
      stanza = get_stanza(lines, all_verses)

      stanza[0][0] << ".\n" if lines == 1
      overall_song << stanza
      all_verses.shift
      lines -= 1
    end

    overall_song.reverse.join("\n")
  end

  def self.get_stanza(lines, all_verses)
    stanza = []
    lines.times do |n|
      stanza << if n == 0
                  ["This is " + all_verses[n][0]]
                else
                  get_next_verse(lines, all_verses, n)
                end
    end
    stanza
  end

  def self.get_next_verse(lines, all_verses, n)
    next_verse = [] << all_verses[n - 1][1] + " " + all_verses[n][0]
    next_verse[0] << ".\n" if n == lines - 1
    next_verse
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
