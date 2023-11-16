class ResistorColorDuo

    def self.value(color)
        resistor_color = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

       return resistor_color.index(color[0]) * 10 + resistor_color.index(color[1])
    end 
end 