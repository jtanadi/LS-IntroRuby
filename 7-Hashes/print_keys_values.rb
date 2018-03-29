family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

# p family.keys
# p family.values
# p family
puts "title"
family.each_key() { |key| puts key }

puts "names"
family.each_value() { |value| puts value }

puts "all"
family.each() { |k, v| puts "#{k}: #{v}" }
