class TwoFer
  def self.two_fer(name = nil)
    string = "One for you, one for me."
    string.gsub!("you", name) if name != nil
    return string
  end
end