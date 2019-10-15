# require 'date'
class Meetup
  WDAY = { sunday: 0, monday: 1,
           tuesday: 2, wednesday: 3,
           thursday: 4, friday: 5, saturday: 6 }
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(day, schedule)
    date_arr = Date.new(@year, @month).step(Date.new(@year, @month, -1))
                   .select do |d|
                     d.wday == WDAY[day]
                   end
    case schedule
    when :teenth then date_arr.select { |d| (13..19).cover?(d.mday) }[0]
    when :first then date_arr.first
    when :second then date_arr[1]
    when :third then date_arr[2]
    when :fourth then date_arr[3]
    when :last then date_arr.last
    end
  end
end
