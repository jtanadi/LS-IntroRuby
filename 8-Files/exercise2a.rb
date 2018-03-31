d = Dir.new("./texts")

while file = d.read do
  puts file if File.extname(file) == ".txt"
end