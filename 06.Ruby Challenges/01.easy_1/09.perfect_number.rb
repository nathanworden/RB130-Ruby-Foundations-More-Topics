class PerfectNumber
  def self.classify(subject_num)
    raise RuntimeError if subject_num < 0
    divisors = (1...subject_num)
               .select { |candidate| subject_num % candidate == 0 }
               .sum
    if divisors > subject_num
      'abundant'
    elsif divisors < subject_num
      'deficient'
    else
      'perfect'
    end
  end
end
