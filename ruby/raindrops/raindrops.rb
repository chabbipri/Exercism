
class Raindrops 

  def self.convert(value)
    return rain_drops_sound(value) if rain_drops_sound(value) != ""
    return value.to_s if rain_drops_sound(value) == ""
  end

  def self.rain_drop_values
    {3 => "Pling", 5 => "Plang", 7 => "Plong"}
  end

  def self.rain_drops_sound(value)
    sound = []

    sound << rain_drop_values[3] if value == 3 || value%3 == 0
    sound << rain_drop_values[5] if value == 5 || value%5 == 0
    sound << rain_drop_values[7] if value == 7 || value%7 == 0

    sound.join
  end
end 