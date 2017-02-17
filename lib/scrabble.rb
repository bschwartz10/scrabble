class Scrabble

  def score(word)
    word.upcase.chars.map do |letter|
      point_values[letter]
    end.reduce(:+)
  end

  def score_with_multipliers(word, letter_multipliers, word_multiplier =1)
    letter_values = word.upcase.chars.map do |letter|
      point_values[letter]
    end
    zipped_numbers = letter_values.zip(letter_multipliers)
    word_value = zipped_numbers.map do |letter, multipliers|
      (letter * multipliers)
    end
    if word.length == 7
      (word_value.inject(:+) + 10) * word_multiplier
    else
      word_value.inject(:+) * word_multiplier
    end
  end

  def highest_scoring_word(words)
  word_value = words.sort_by do |word|
      score(word)
    end
  word_value
  end


  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end
