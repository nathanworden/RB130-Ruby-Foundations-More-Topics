# generate a method that will create a paragraph from multiple lines.
# Walk backwards from pieces and generate paragraphs from last (1..n) lines

class House

  def combine_pieces(pieces)
    line = "This is "
    pieces.each do |piece|
      line += (piece[0] + "\n")
      line += (piece[1] + ' ') if piece[1]
    end
    line
  end

  # private

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

house = House.new
p house.combine_pieces(house.pieces)