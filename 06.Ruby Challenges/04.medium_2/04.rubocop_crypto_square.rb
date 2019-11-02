class Crypto
  def initialize(input)
    @plaintext = input.gsub(/\W/, '').downcase
  end

  attr_reader :plaintext

  def normalize_plaintext
    plaintext
  end

  def size
    return Math.sqrt(plaintext.size) if square?(plaintext.size)

    goal_size = plaintext.size
    until square?(goal_size)
      goal_size += 1
    end
    Math.sqrt(goal_size).to_i
  end

  def square?(x)
    (Math.sqrt(x) % 1).zero?
  end

  def plaintext_segments
    output = []
    current = []

    chop_text = plaintext.chars

    until chop_text.empty?
      size.times do
        current << chop_text.shift
      end
      output << current.compact.join
      current = []
    end
    output
  end

  def setup_ciphertext
    output = []

    size.times do |idx|
      current = []
      plaintext_segments.each { |element| current << element[idx] }
      output << current.compact
      idx += 1
    end
    output
  end

  def ciphertext
    setup_ciphertext.join
  end

  def normalize_ciphertext
    setup_ciphertext.map!(&:join).join(" ")
  end
end
