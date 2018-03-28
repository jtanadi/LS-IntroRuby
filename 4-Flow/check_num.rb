def check_num(num)
  if num < 0
    return "Number is below 0"
  elsif num >= 0 && num <= 50
    return "Number is between 0 & 50"
  elsif num >= 51 && num <= 100
    return "Number is between 51 & 100"
  else
    return "Number is above 100"
  end
end

print "Enter number: "
input_num = gets.chomp.to_i
puts check_num(input_num)
