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

    pig_array = Array.new

    str_array.each do |word|
      if !vowels.include?(word[0])
        word[0] = ""

        pig_array << "#{word}ay"
      else
        "#{word}"
      end
    end
  end
end
