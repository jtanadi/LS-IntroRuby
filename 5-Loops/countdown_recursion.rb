def countdown_recursion(num)
  if num <= 0
    return "Done!"
  else
    puts num
    return countdown_recursion(num - 1)
  end
end

puts countdown_recursion(50)
