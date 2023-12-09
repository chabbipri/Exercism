require "pry"
class Clock
  attr_reader :hour, :minute


  def initialize(time)
     @hour = time.has_key?(:hour)  ? time[:hour] : 0
     @minute = time.has_key?(:minute) ? time[:minute] : 0
  end

  def hour_calculation(hour, minute)
    if hour < 0
      cal_hour = hour + (minute/60)
    else
      cal_hour = hour % 12 + (minute/60)
    end
    if cal_hour < 0
      until cal_hour > 0
        cal_hour = cal_hour + 24
      end
    end
    if cal_hour > 24
      until cal_hour < 24
        cal_hour = cal_hour - 24
      end
    end
    return cal_hour
  end

  def minute_calculation(minute)
    if minute < 0
     cal_minute = minute + 60
     until cal_minute >= 0
      cal_minute = cal_minute + 60
     end
    else
     cal_minute = minute % 60
    end
    return cal_minute
  end



  def to_s
   hrs = hour_calculation(hour, minute)
   mins = minute_calculation(minute)

    "#{sprintf("%02d", hrs)}:#{sprintf("%02d", mins)}"
  end
end