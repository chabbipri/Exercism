class Clock
  attr_reader :hour, :minute

def initialize(hour: 0, minute: 0)
  @minute = minute
  @hour = hour
end

def to_s
  time = calculate_time
  format('%02d:%02d', time[0], time[1])
end

def calculate_time
  time = []

  if minute >= 60
    minute = minute % 60
    hour = hour + (minute/60)
  end

  time << hour % 24
  time << minute

  time
end

end