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

    str_array.each do |word|
      if !vowels.include?(word[0])
        word[0] = ""

        "#{word}ay"
      else
        "#{word}"
      end
    end
  end
end
