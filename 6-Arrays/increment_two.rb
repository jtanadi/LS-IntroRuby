arr = [1, 2, 3, 4, 5]

new_arr = arr.map { |num| num + 2 }

second_arr = []
arr.each { |num| second_arr << num + 2 }

p arr
p new_arr
p second_arr
