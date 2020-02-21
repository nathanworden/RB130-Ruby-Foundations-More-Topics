# Your task in order to complete this Kata is to write a function which formats a duration, given as a number of seconds, in a human-friendly way.

# The function must accept a non-negative integer. If it is zero, it just returns "now". Otherwise, the duration is expressed as a combination of years, days, hours, minutes and seconds.

# It is much easier to understand with an example:

# format_duration(62)    # returns "1 minute and 2 seconds"
# format_duration(3662)  # returns "1 hour, 1 minute and 2 seconds"
# For the purpose of this Kata, a year is 365 days and a day is 24 hours.

# Note that spaces are important.

# Detailed rules
# The resulting expression is made of components like 4 seconds, 1 year, etc. In general, a positive integer and one of the valid units of time, separated by a space. The unit of time is used in plural if the integer is greater than 1.

# The components are separated by a comma and a space (", "). Except the last component, which is separated by " and ", just like it would be written in English.

# A more significant units of time will occur before than a least significant one. Therefore, 1 second and 1 year is not correct, but 1 year and 1 second is.

# Different components have different unit of times. So there is not repeated units like in 5 seconds and 1 second.

# A component will not appear at all if its value happens to be zero. Hence, 1 minute and 0 seconds is not valid, but it should be just 1 minute.

# A unit of time must be used "as much as possible". It means that the function should not return 61 seconds, but 1 minute and 1 second instead. Formally, the duration specified by of a component must not be greater than any valid more significant unit of time.


# p format_duration(0)            == "now"
# p format_duration(62)           == "1 minute and 2 seconds"
# p format_duration(3662)         == "1 hour, 1 minute and 2 seconds"
# p format_duration(86_401)       == "1 day and 1 second"
# p format_duration(15_731_080)   == "182 days, 1 hour, 44 minutes and 40 seconds"
# p format_duration(132_030_240)  == "4 years, 68 days, 3 hours and 4 minutes"

# Convert integer into years, days, hours, minutes, and seconds.

# 60seconds == 1 minute
# 60 minutes == 1 hour
# 24 hours == 1 day
# 365 == 1 year

# Check if the number of seconds fits into a year
# Then check days
# Then check hours
# Then check minutes
# Then provide seconds
SECONDS_IN_MIN = 60
SECONDS_IN_HOUR = SECONDS_IN_MIN * 60
SECONDS_IN_DAY = SECONDS_IN_HOUR * 24
SECONDS_IN_YEAR = SECONDS_IN_DAY * 365

def format_duration(int)
  return "now" if int == 0

  years, days = int.divmod(SECONDS_IN_YEAR)
  days, hours = days.divmod(SECONDS_IN_DAY)
  hours, minutes = hours.divmod(SECONDS_IN_HOUR)
  minutes, seconds = minutes.divmod(SECONDS_IN_MIN)

  output = []
  strs = ["years", "days", "hours", "minutes", "seconds"]
  [years, days, hours, minutes, seconds].each_with_index do |period, idx|
    if period == 1
      output << "#{period} #{strs[idx][0..-2]}"
    elsif period > 1
      output << "#{period} #{strs[idx]}"
    end
  end

  first_part = nil
  if output.size > 2
    output[-1] = "and #{output[-1]}"
    first_part = output[0..-3]
    second_part = output[-2..-1]
    return [first_part.join(', '), second_part.join(' ')].join(', ')
  end

  output.join(' and ')
end



p format_duration(0)            == "now"
p format_duration(60)           == "1 minute"
p format_duration(62)           == "1 minute and 2 seconds"
p format_duration(3662)         == "1 hour, 1 minute and 2 seconds"
p format_duration(86_401)       == "1 day and 1 second"
p format_duration(15_731_080)   == "182 days, 1 hour, 44 minutes and 40 seconds"
p format_duration(132_030_240)  == "4 years, 68 days, 3 hours and 4 minutes"