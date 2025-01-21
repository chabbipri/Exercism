class Raindrops
  SOUNDS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(number)
    string = ""
    string += SOUNDS[3] if number % 3 == 0
    string += SOUNDS[5] if number % 5 == 0
    string += SOUNDS[7] if number % 7 == 0
    string.empty? ? number.to_s : string
  end
end