class ResistorColorDuo

  BANDCOLORS = [ "black","brown","red","orange","yellow","green","blue","violet","grey", "white" ]

  def self.value(colors)
    color_resistor = ""
    colors[0..1].map{|color| color_resistor += BANDCOLORS.index(color.downcase).to_s}
    color_resistor.to_i
  end
end