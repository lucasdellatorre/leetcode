# @param {String} s
# @return {Integer}
def roman_to_int(s)
  result = 0
  table = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  s.length.times do |i|
    current_roman = table[s[i]]
    next_roman = table[s[i + 1]]
    if !next_roman? && current_roman < next_roman
      result -= current_roman
      next
    end
    result += current_roman
  end

  result
end
