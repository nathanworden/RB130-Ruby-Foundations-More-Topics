class DNA
  def initialize(first_strand)
    @first_strand = first_strand
  end

  def hamming_distance(strand)
    return 0 if @first_strand == strand

    strand1, strand2 = comparables(strand)
    count_differences(strand1, strand2)
  end

  def comparables(strand)
    arr = [@first_strand, strand]
    long = arr.max_by(&:length)
    short = arr.delete_if { |x| x == long }[0]
    [long[0, short.size], short]
  end

  def count_differences(strand1, strand2)
    count = 0
    strand1.chars.each_with_index do |letter, index|
      count += 1 if letter != strand2[index]
    end
    count
  end
end
