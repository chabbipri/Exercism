require "pry"
class Clock
  attr_reader :hour, :minute


  def initialize(time)
     @hour = time.has_key?(:hour)  ? time[:hour] : 0
     @minute = time.has_key?(:minute) ? time[:minute] : 0
  end

  def to_s
    if hour < 0
     h = hour + 24
     until h > 0
      h = h + 24
     end
    else
      h = hour % 12 + (minute/60)
      if h < 0
       until h > 0
        h = h + 24
       end
      else
        until h < 24
          h = h - 24
        end
      end
    end

    if minute < 0
     m = minute + 60
     until m > 0
      m = m + 60
     end
    else
     m = minute % 60
    end

    "#{sprintf("%02d", h)}:#{sprintf("%02d", m)}"
  end
end