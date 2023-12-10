class TwelveDays
  TWELVEDAYSGIFTS = [
    { day: "first", gift: " a Partridge in a Pear Tree." },
    { day: "second", gift: " two Turtle Doves, and" },
    { day: "third", gift: " three French Hens," },
    { day: "fourth", gift: " four Calling Birds," },
    { day: "fifth", gift: " five Gold Rings," },
    { day: "sixth", gift: " six Geese-a-Laying," },
    { day: "seventh", gift: " seven Swans-a-Swimming," },
    { day: "eighth", gift: " eight Maids-a-Milking," },
    { day: "ninth", gift: " nine Ladies Dancing," },
    { day: "tenth", gift: " ten Lords-a-Leaping," },
    { day: "eleventh", gift: " eleven Pipers Piping," },
    { day: "twelfth", gift: " twelve Drummers Drumming," },
  ]

  LYRICS = "On the day_no day of Christmas my true love gave to me:"

  def self.song
    lyrics_line = ""
    song = ""
    TWELVEDAYSGIFTS.each do |day_gift|
      lyrics_line = day_gift[:gift] + lyrics_line
      song += if day_gift[:day] == "twelfth"
                "#{LYRICS.gsub('day_no', day_gift[:day])}#{lyrics_line}\n"
              else
                "#{LYRICS.gsub('day_no', day_gift[:day])}#{lyrics_line}\n\n"
              end
    end
    song
  end
end
