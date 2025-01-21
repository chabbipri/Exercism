class Acronym
  attr_reader :string

  def self.abbreviate(string)
    word = string.split(/\W/).map {
      |sub_string|
      sub_string[0].upcase if sub_string != ""
    }.join()
  end
end