def take_proc(proc_to_call)
  [1, 2, 3, 4, 5].each do |number|
    proc_to_call.call number
  end
end

my_proc = Proc.new do |item|
  puts "#{item}. Proc being called in method."
end

take_proc(my_proc)
