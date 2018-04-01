talk = Proc.new do |arg|
  puts "I am saying #{arg}"
end

talk.call "hey"

talk_preferable = proc do |arg|
  puts "I am saying #{arg}"
end

talk_preferable.call "hey"
