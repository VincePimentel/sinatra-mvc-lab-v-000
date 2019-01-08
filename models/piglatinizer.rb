class PigLatinizer
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def pigify
    vowels = %w[
      a
      e
      i
      o
      u
    ]

    str_array = str.split(" ")

    str_array.collect do |word|
      if !vowels.include?(word[0].downcase)
        letter = word[0]
        word[0] = ""

        "#{word}#{letter}ay"
      else
        "#{word}"
      end
    end

    "#{pig_array.join(" ")}"
  end
end
