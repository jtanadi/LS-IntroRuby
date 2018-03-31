File.open("texts/simple_file.txt", "r") do |read_file|
  counter = 1
  
  read_file.readlines.each do |line|
    File.open("texts/simple_file_nums.txt", "a") do |write_file|
      # Format each line to start with num & end with period + newline:
      # 1. Lorem ipsum bla bla.\n
      new_line = line[-2] != "." ? "#{line[0..-2]}.\n" : "#{line}"
      write_file << "#{counter}: #{new_line}"
    end

    counter += 1
  end
end