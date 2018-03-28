def check_num(num)
  answer = case
    when num < 0
      "Number is below 0"
    when num >= 0 && num <= 50
      "Number is between 0 & 50"
    when num >= 51 && num <= 100
      "Number is between 51 & 100"
    else
      "Number is above 100"
    end

  return answer
end

print "Enter number: "
input_num = gets.chomp.to_i
puts check_num(input_num)
