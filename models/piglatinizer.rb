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
    
    if vowels.include?(str[0])
      str[0] = ""
      
      "#{str}"
    else

    end
  end
end
