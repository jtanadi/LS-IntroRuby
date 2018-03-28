puts "How old are you?"
input_age = gets.chomp.to_i

offset = 10
4.times do
  puts "In #{offset} years you will be:\n#{input_age + offset}"
  offset += 10
end