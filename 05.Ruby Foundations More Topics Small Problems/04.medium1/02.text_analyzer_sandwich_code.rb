# File.open('02.sample_text_file.rb').each do |line|
#   puts line
# end


# My answer:

# class TextAnalyzer
#   def process
#     arr = []
#     File.open('02.sample_text_file.rb').each do |line|
#       arr << line
#     end
#     yield(arr)
#   end
# end

# analyzer = TextAnalyzer.new
# analyzer.process {|arr| puts "#{arr.join.split("\n\n").size} paragraphs" }
# analyzer.process {|arr| puts "#{arr.size} lines" }
# analyzer.process {|arr| puts "#{arr.flatten.join.split.size} words"}


# Book Answer:

class TextAnalyzer
  def process
    file = File.open('02.sample_text_file.rb', 'r')
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split(/\./).size} sentences" }
analyzer.process { |text| puts "#{text.split("\n").count} lines" }
analyzer.process { |text| puts "#{text.split(' ').count} words" }