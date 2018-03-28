def flatten(arr)
  return arr.reduce([]) do |collection, item|
    item.kind_of?(Array) ?
      collection + flatten(item) : collection << item
  end
end

p flatten([1, 2, 3, [4, [5, 6]]])
