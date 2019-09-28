# Problem:

# If two strings are different lengths, chop off the extra length for one of the strings.
    # Which string is longer?
    # How much is it longer by?
    # Chop off that amount of the longer string

# Iterate over the letters of strand1, comparing them to each letter in the same location of strand2. Count every time they are different.

# each_with_index
# count = 0
# count += 1 if letter != strand2[index]

# My answer

# class DNA
#   def initialize(first_strand)
#     @first_strand = first_strand
#   end

#   def hamming_distance(strand)
#     return 0 if @first_strand == strand

#     strand1, strand2 = comparables(strand)
#     count_differences(strand1, strand2)
#   end

#   def comparables(strand)
#     arr = [@first_strand, strand]
#     long = arr.max_by {|x| x.length}
#     short = arr.delete_if {|x| x == long}[0]
#     [long[0, short.size], short]
#   end

#   def count_differences(strand1, strand2)
#     count = 0
#     strand1.chars.each_with_index do |letter, index|
#       count += 1 if letter != strand2[index]
#     end
#     count
#   end
# end

# strand = DNA.new('ACT')

# p strand.hamming_distance('GGA')








# Student Answer

# require 'pry'

# class DNA
#   def initialize(strand)
#     @strand = strand
#   end

#   def hamming_distance(strand_2)
#     strand_1 = @strand[0, strand_2.length]

#     strand_1.chars.zip(strand_2.chars).count { |first, last| first != last }
#   end
# end



# Matt Clark Answer

require 'pry'
class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(strand2)
    @strand.chars.zip(strand2.chars)
    binding.pry
    .map(&:compact)
    .map(&:uniq)
    .count {|e| e.size == 2}
  end
end


barbara_stri_strand = DNA.new('DuAoirgo')

p barbara_stri_strand.hamming_distance('DNA')








