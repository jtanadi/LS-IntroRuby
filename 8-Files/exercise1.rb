# Read file as 1 string & assign to variable "simple"
simple = File.read("simple_file.txt")

# Open file in append mode
# (if file doesn't exist, it will be created)
# Using a block will close the file at the end
File.open("new_file.txt", "a") do |file|
  # Method 1 of writing to file (shovel)
  file << simple

  # Method 2 (using write method - write() takes in string)
  file.write(simple)

  # Method 3 (using puts method)
  file.puts(simple)
end