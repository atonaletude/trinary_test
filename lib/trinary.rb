class Trinary
  def initialize(trinary_number)
    @trinary_number = trinary_number
  end

  def to_decimal
    return 0 unless trinary_number?
    converted_number =
    @trinary_number.split('').reverse.map(&:to_i)
    results = converted_number.map.with_index do |value, index|
      value * 3**index
    end
    results.reduce(:+)
  end

  def trinary_number?
    @trinary_number.chars.all? { |value| %w(0 1 2).include?(value)}
  end

end

p Trinary.new("c0a1b2").to_decimal
