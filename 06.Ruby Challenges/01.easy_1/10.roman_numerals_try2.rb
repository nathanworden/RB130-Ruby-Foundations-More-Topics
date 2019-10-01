# NUMERALS = { '0' => '',
#              '1' => 'I',
#              '4' => 'IV',
#              '5' => 'V',
#              '9' => 'IX',
#              '10' => 'X',
#              '40' => 'XL',
#              '50' => 'L',
#              '90' => 'XC',
#              '100' => 'C',
#              '400' => 'CD',
#              '500' => 'D',
#              '900' => 'CM',
#              '1000' => 'M' }

# class Integer
#   def to_roman
#     expanded_notation.map.with_index do |num, index|
#       if num.match?(/[51]/)
#         NUMERALS[num]
#       elsif num.match?(/[49]/)
#         NUMERALS[num]
#       elsif num.match?(/[23]/)
#         NUMERALS[(1 * 10**index).to_s] * num[0].to_i
#       elsif num.match?(/[678]/)
#         deal_with_678(num, index)
#       end
#     end.reverse.join
#   end

#   def expanded_notation
#     digits.map.with_index { |num, index| (num * 10**index).to_s }
#   end

#   def deal_with_678(number, index)
#     level = '5' + '0' * index
#     remainder = number.to_i - level.to_i
#     NUMERALS[level] + remainder.to_roman.to_s
#   end
# end



# Juliet Siney Answer is Brilliant:

class Integer
  DEC_TO_ROMAN = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
                   90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V',
                   4 => 'IV', 1 => 'I' }

  def to_roman
    decimal = self
    roman_number = ''
    hash = DEC_TO_ROMAN.clone

    dec, roman = hash.shift

    until decimal.zero?
      if decimal >= dec
        roman_number += roman
        decimal -= dec
      else
        dec, roman = hash.shift
      end
    end
    
    roman_number
  end
end
