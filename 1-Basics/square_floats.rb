def square_floats(num)
  return num * num
end

print "Enter float: "
input_num = gets.chomp.to_f
puts square_floats(input_num)