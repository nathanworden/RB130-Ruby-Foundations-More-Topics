# If a number is between 1 and 3, just repeat it
# If a number is 4 then take the next number up minus 1
require 'pry'

NUMERALS = {'0' => '',
            '1' => 'I', 
            '4' => 'IV', 
            '5' => 'V', 
            '9' => 'IX', 
            '10' => 'X', 
            '40' => 'XL', 
            '50' => 'L', 
            '90' => 'XC', 
            '100' => 'C', 
            '400' => 'CD', 
            '500' => 'D', 
            '900' => 'CM', 
            '1000' => 'M'}

require 'pry'

class Integer

  def to_roman
    places = get_array_of_whole_numbers
    if every_number_is_in_numerals_hash(places)
      convert_numbers_to_numerals(places)
    else
      ranges = places.dup
      ranges.map do |num|
        binding.pry
        if NUMERALS.include?(num)
          NUMERALS[num]
        elsif other_keys_add_up_to(num)
          which_keys_add_up_to?(num)
        else
          transform = ''
          NUMERALS.keys.reverse.each do |numeral|
            if num.to_i > numeral.to_i
              num[0].to_i.times {|tr| transform << NUMERALS[numeral]}
              break
            else
              next
            end
          end
          transform
        end
      end#.join
    end
  end

  def get_array_of_whole_numbers
    self.digits
               .map
               .with_index {|num, index| num.to_s + '0'*index}
               .reverse
  end

  def every_number_is_in_numerals_hash(places)
    places.all? {|num| NUMERALS.include?(num)}
  end

  def convert_numbers_to_numerals(places)
    output = ''
    places.each {|num| output << NUMERALS[num]}
    output
  end

  def other_keys_add_up_to(num)
    keys_except_1 = NUMERALS.dup.delete_if {|key, value| key == '0' || key == '1'}
    keys_except_1.keys.reverse.each do |numeral|
      if num.to_i > numeral.to_i
        difference = num.to_i - numeral.to_i
        keys_except_1.include?(difference.to_s)
      else
        next
      end
    end
  end

  def which_keys_add_up_to?(num)
    transform = ''
    NUMERALS.keys.reverse.each do |numeral|
      if num.to_i > numeral.to_i
        difference = (num.to_i - numeral.to_i).to_s
        next if !NUMERALS.include?(difference)
        transform = "#{NUMERALS[numeral]}#{NUMERALS[difference]}"
        break
      else
        next
      end
    end
    transform
  end

end

p 163.to_roman
# CLXIII

# p 160.to_roman
#CLX

# p 1990.to_roman
# MCMXC
# p 1253.to_roman
# MCCLIII

# p 1.to_roman
# p 2.to_roman
# p 3.to_roman
# p 4.to_roman
# p 5.to_roman
# p 6.to_roman
# p 7.to_roman
# p 8.to_roman
# p 9.to_roman