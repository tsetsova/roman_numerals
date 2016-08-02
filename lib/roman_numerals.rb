class RomanNumerals
  CONVERSIONS = {
    10 => "X",
    9 => "IX",
    6 => "VI",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  def arabic_to_roman(number)
    return "" if number == 0
    arabic, roman = CONVERSIONS.select{|arabic, roman| arabic <= number}.first
    return roman if CONVERSIONS.include?(number)
    roman + arabic_to_roman(number - arabic)
  end
end
