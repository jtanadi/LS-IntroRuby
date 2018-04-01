def contains_lab?(word)
  word.downcase.include? "lab"
end

p contains_lab?("laboratory")
p contains_lab?("experiment")
p contains_lab?("Pans Labyrinth")
p contains_lab?("elaborate")
p contains_lab?("polar bear")
