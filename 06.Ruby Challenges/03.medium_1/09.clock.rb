# Initialize a clock opbject that takes two integers
    # The secon integer is default to 0
#


# class Clock
#   def initialize(hours, minutes=0)
#     @hours = sprintf("%02d", hours)
#     @minutes = sprintf("%02d", minutes)
#   end

#   def self.at(hours, minutes=0)
#     self.new(hours, minutes)
#     # "#{sprintf("%02d", hours)}:#{sprintf("%02d", minutes)}"
#   end

#   # def to_s
#   #   "#{@hours}:#{@minutes}" 
#   # end
# end

# p (Clock.at(8).to_s)



####################


class Clock
  attr_accessor :hours, :minutes

  def initialize(hours, minutes=0)
    @hours = hours
    @minutes = minutes
    @total_time = @minutes + @hours * 60
  end

  def self.at(hours, minutes=0)
    Clock.new(hours, minutes)
  end

  def to_s
    format("%02d:%02d", hours, minutes)
  end

  def +(more_minutes)
    total_time = @total_time + more_minutes
    hours, minutes = total_time.divmod(60)
    hours = hours % 24
    Clock.new(hours, minutes)
  end

  def -(less_minutes)
    total_time = @total_time - less_minutes
    hours, minutes = total_time.divmod(60)
    hours = hours % 24
    Clock.new(hours, minutes)
  end

  def ==(other_clock)
    hours == other_clock.hours && minutes == other_clock.minutes
  end
end




puts Clock.at(0, 30) - 60


# Gelsey answer:

# Create a clock that is independent of date.

# You should be able to add and subtract minutes 
# to it. Two clocks that represent the same time 
# should be equal to each other.

# class Clock
#   HOUR_IN_MINUTES = 60
#   attr_reader :hours, :minutes
#   attr_writer :minutes

#   def initialize(hours, minutes=0)
#     @hours = hours % 24
#     @minutes = minutes
#   end

#   def self.at(hours, minutes=0)
#     Clock.new(hours, minutes)
#   end

#   def to_s
#     format("%02d:%02d", hours, minutes)
#   end

#   def +(time)
#     new_hours, new_minutes = time.divmod(HOUR_IN_MINUTES)
#     Clock.new(hours + new_hours, minutes + new_minutes)
#   end

#   def -(time)
#     self + (-time)
#   end

#   def ==(other_clock)
#     hours == other_clock.hours && minutes == other_clock.minutes
#   end
# end








