def contains_letter?(input_str, letter)
  if /#{letter}/.match(input_str)
    puts "#{letter} is in #{input_str}"
    true
  else
    puts "#{letter} is NOT in #{input_str}"
    false
  end
end

contains_letter?("basketball", "b")
contains_letter?("basketball", "c")
