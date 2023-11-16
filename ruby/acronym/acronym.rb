class Acronym
    def self.abbreviate(string)
        abbreviate = ""
        string.split(/\W/).map{|word| abbreviate += word[0] if word != ""}
        abbreviate.upcase
    end 
end 
    
 