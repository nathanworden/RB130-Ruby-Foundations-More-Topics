# Problem
# Write a program that translates RNA sequesnce into proteins.

# Methods we need to create:
# of_codon
# of_rna

# of_codon
# Take a string of 3 letters
# Create a lookup table for the Condon / Amino Acid table
# Match the input string to the value in the lookuptable. Return that.

# of_rna
# Seperate the strand into codons (groups of 3)
# Map each codon through the #of_codon method

class InvalidCodonError < StandardError; end

class Translation
  LOOKUP_TABLE = { 
                  'AUG' => 'Methionine',
                  'UUU' => 'Phenylalanine',
                  'UUC' => 'Phenylalanine',
                  'UUA' => 'Leucine', 
                  'UUG' => 'Leucine',
                  'UCU' => 'Serine',
                  'UCC' => 'Serine',
                  'UCA' => 'Serine',
                  'UCG' => 'Serine',
                  'UAU' => 'Tyrosine',
                  'UAC' => 'Tyrosine',
                  'UGU' => 'Cysteine',
                  'UGC' => 'Cysteine',
                  'UGG' => 'Tryptophan',
                  'UAA' => 'STOP',
                  'UAG' => 'STOP',
                  'UGA' => 'STOP'
                 }

  def self.of_codon(codon)
    LOOKUP_TABLE[codon]
  end

  def self.of_rna(strand)
    # create an array of string characters
    # Group single characteres into groups of 3
    # Call of_codon on each group of 3
    # raise error if number % 3 != 0
    start_idx = 0
    end_idx = 2
    output = []

    loop do
      break if start_idx >= strand.size

      current = strand[start_idx..end_idx]
      break if of_codon(current) == 'STOP'
      raise(InvalidCodonError, 'ivalid') if of_codon(current) == nil
      
      output << current
      start_idx += 3
      end_idx += 3
    end
    output.map {|codon| of_codon(codon)}
  end
end

