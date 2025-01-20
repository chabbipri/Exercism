require 'pry'

class ResistorColorDuo
  COLOR_CODED_BAND = %w[black brown red orange yellow green blue violet grey white]

  def self.value(color_string)
    index = 1
    color_resistor = 0

    color_string[0..1].each do |color|
      color_resistor += (10 ** index) * COLOR_CODED_BAND.index(color)
      index -= 1
    end

   color_resistor
  end
end