# Initialize a clock opbject that takes two integers
    # The secon integer is default to 0
#


class Clock
  def initialize(hours, minutes=0)
    @hours = sprintf("%02d", hours)
    @minutes = sprintf("%02d", minutes)
  end

  def self.at(hours, minutes=0)
    self.new(hours, minutes)
    # "#{sprintf("%02d", hours)}:#{sprintf("%02d", minutes)}"
  end

  # def to_s
  #   "#{@hours}:#{@minutes}" 
  # end
end

p (Clock.at(8).to_s)
