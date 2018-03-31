# Some notes on Ruby's File class

## Opening & Creating Files
Files can be opened with `File.new("file_name_here", "mode")` and `File.open("file_name_here", "mode")`. Files are opened in one of [Ruby IO's modes](https://ruby-doc.org/core-2.5.0/IO.html#method-c-new-label-IO+Open+Mode)

If a file doesn't exist and the `mode` passed-in is `w` (write), `w+` (read-write), `a` (append), or `a+` (read-append), a new file will be created. 

### File.new()
`File.new()` creates a new file object with passed-in name. `File.new()` **does not** take blocks. When a file is accessed with `File.new()`, it has to be closed explicitly. 

```ruby
# Open or create new file
f = File.new("file_name.txt", "w+")

# Do some stuff here
f.write("hey!\n")
f << "bob"

# Close file
f.close
```

### File.open()
`File.open()` is synonymous with `File.new()` except that it can take a block. At the end of the block, Ruby automatically closes the file. `file.close` **does not** have to be called.

```ruby
File.open("file_name.txt", "w+") do |file|

  # Do some stuff here
  file << "hey there!"

# File is closed
end
```

## Reading files
Files can be read either by opening the file and then reading it (`r` mode) or using `IO.read()` and `IO.readlines()` (or `File.read()` and `File.readlines()` since the `File` class is a subclass of `IO`). [Documentation here](http://ruby-doc.org/core-2.5.0/IO.html#method-c-read).

### Open & read with File.new()
```ruby
# Open file in read-only mode
f = File.new("file_name.txt", "r")

# Read the entire file & assign to variable "content"
content = f.read

# OR

# Read each line in a file & pushes into array "content_arr"
content_arr = f.readlines

# Explicitly close the file
f.close
```

### Open & read with File.open()
```ruby
# Declare "content" as an empty arr
content = []

# Open file with read-only mode & a block to execute
File.open("file_name.txt", "r") do |file|

  # Instantiate a counter for later
  line_count = 1

  # Read each line of the file & manipulate it (add line number)
  # each line is then pushed into "content" variable & counter incremented
  file.readlines.each do |line|
    content << "#{line_count}: #{line}"
    line_count += 1
  end

# End block / close file
end
```

### Reading files with IO.read()
With this process, files are open & closed automatically, but content can't be manipulated as part of the "reading process" like in the example above.

```ruby
# Read file & assign content to variable "content"
content = IO.read("file_name.txt")

# Do some stuff to content
content += " extra stuff"

# OR

# Read file line-by-line & assign array of lines to variable "content_array"
content_array = IO.readlines("file_name.txt")

content_array.each do |line|
  # do some stuff here
end
```