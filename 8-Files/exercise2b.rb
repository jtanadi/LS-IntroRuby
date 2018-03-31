require "pathname"

pn = Pathname.new("./texts")
pn.entries.each do |file|
  puts file if file.extname == ".txt"
end