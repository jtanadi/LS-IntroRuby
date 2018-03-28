def find_digit(num)
  thousands = num / 1000
  hundreds = num / 100 % 10
  tens = num / 10 % 10
  ones = num % 10

  return "#{num} => thousands = #{thousands}, hundreds = #{hundreds}, tens = #{tens}, ones = #{ones} "
end

puts find_digit(4123)