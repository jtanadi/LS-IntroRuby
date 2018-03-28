def factorial(num)
  if num == 1
    return 1
  else
    return num * factorial(num - 1)
  end
end

print "Enter num: "
input_num = gets.chomp.to_i
puts factorial(input_num)