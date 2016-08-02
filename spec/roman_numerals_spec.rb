require 'roman_numerals'

describe RomanNumerals do
  let(:roman_numerals) { described_class.new}

  it "converts 0 into an empty string" do
    expect(roman_numerals.arabic_to_roman(0)).to eq ""
  end

  it "converts 1 into I" do
    converts(1, "I")
  end

  it "converts 2 into II" do
    converts(2, "II")
  end

  it "converts 3 into III" do
    converts(3, "III")
  end

  it "converts 4 into IV" do
    converts(4, "IV")
  end

  it "converts 5 into V" do
    converts(5, "V")
  end

  it "converts 6 into VI" do
    converts(6, "VI")
  end

  it "converts 7 into VII" do
    converts(7, "VII")
  end

  it "converts 8 into VIII" do
    converts(8, "VIII")
  end

  it "converts 9 into IX" do
    converts(9, "IX")
  end

  it "converts 10 into X" do
    converts(10, "X")
  end

  def converts(arabic, roman)
    expect(roman_numerals.arabic_to_roman(arabic)).to eq roman
  end
end
