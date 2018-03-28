def selective_upcase(str)
  if str.length > 10
    return str.upcase
  end
  return str
end

puts selective_upcase("he")
