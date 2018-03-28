def callback(arg)
  puts "Called & has this argument: #{arg}"
end

def main_func(arg, cb)
  cb.call(arg)
end

main_func(55, method(:callback))
