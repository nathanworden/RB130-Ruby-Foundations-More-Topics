LETTERS = ('A'..'Z').to_a
DIGITS = (0..9).to_a

class Robot
  attr_reader :name

  @@used_names = []

  def initialize
    @name = create_name
  end

  def reset
    @name = create_name
  end
  
  private
  def create_name
    name = ''
    until !@@used_names.include?(name)
      result = []
      2.times {result << LETTERS[rand(26)]}
      3.times {result << rand(0..9)}
      name = result.join
    end

    @@used_names << name
    name
  end
end