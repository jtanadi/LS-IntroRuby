def take_block(&input_block)
  puts "You passed in #{input_block.call}"
end

# take_block { [1, 2, 3] }

def take_block_arg(num, &input_block)
  input_block.call(num)
end

# take_block_arg(5) do |pep|
#   puts "Call block with #{pep}"
# end

def take_block_yield(passed_to_block)
  block = yield(passed_to_block)
  puts "Block: #{block}"
end

take_block_yield("an argument") { |pep| "Called with #{pep}" }

[1, 2, 3].each do |num|
  puts num
end

def my_each(array)
  for item_in_array in array
    yield(item_in_array)
  end
end

my_each([1, 2, 3]) do |num|
  puts num
end
