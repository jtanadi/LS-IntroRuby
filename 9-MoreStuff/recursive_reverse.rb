def reverse(str)
  str.length <= 1 ? str : reverse(str[1..-1]) + str[0]
end

puts reverse("")
puts reverse("a")
puts reverse("abc")
puts reverse("ball")
puts reverse("hello there")