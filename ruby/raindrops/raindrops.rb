class Raindrops
  RAINDROP_SOUNDS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong",
  }

  def self.convert(number)
    return number.to_s if raindrops_sounds(number) == ""

    raindrops_sounds(number)
  end

  private

  def self.raindrops_sounds(number)
    RAINDROP_SOUNDS.select do |factor, _sound|
      divisble_by?(number, factor)
    end.values.join
  end

  def self.divisble_by?(dividend, divisor)
    dividend % divisor == 0
  end
end
