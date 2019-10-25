require 'pry'

# LOOKUP = {plus: :+, minus: :-, multiplied: :*, divided: :/}

# class ArgumentError < StandardError; end

# class WordProblem
#   def initialize(sentence)
#     @sentence = sentence
#   end

#   def answer
#     stripped = @sentence.split()[2..-1]
#     stripped.delete("by")
#     raise ArgumentError if stripped.none? {|word| word.match?(/(plus|minus|multiplied|divided)/)}
#       # Turn the odd indexed elements into symbols denoting their operator
#     stripped.map!.with_index do |element, index|          
#     if index.odd?
#       LOOKUP[element.to_sym]
#     elsif index.even?
#       element.to_i 
#     end
#     end

#     # Call the second element on the first, and pass in the third
#     # The result becomes the first element
#     stripped
#     loop do
#       break if stripped.size == 1
#       stripped[0] = stripped[0].send(stripped[1], stripped[2])
#       2.times {|num| stripped.delete_at(1)}
#     end
#     stripped[0]
#   end
# end

# # binding.pry
# p WordProblem.new('What is 33 divided by -3?').answer


class WordProblem
  OPERATORS = { 'plus' => '+', 'minus' => '-',
                'divided' => '/', 'multiplied' => '*' }

  attr_reader :operands, :numbers

  def initialize question
    @numbers = question.scan(/-?\d+/).map(&:to_i)
    @operators = question.scan(/plus|minus|divided|multiplied/)

    raise ArgumentError, "Question not recognized" if @numbers.empty? || @operators.empty?
  end

  def answer
    @operators.each_with_index.reduce(@numbers.first) do |result, (operator, idx)|
      result.send OPERATORS[operator], @numbers[idx + 1]
    end
  end
end

binding.pry
question = 'What is 2 multiplied by -2 multiplied by 3?'
p WordProblem.new(question).answer


