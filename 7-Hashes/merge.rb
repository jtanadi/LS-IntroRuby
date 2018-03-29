family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

friends = {
  good: ["bill", "dick", "susan"],
  great: ["joe", "john"]
}

friends_and_family = family.merge(friends)
p family
p friends
p friends_and_family
puts "---"
family.merge!(friends)
p family
