def sum_array_length(array1, array2)

return array1.length + array2.length
end

f sum_array_values(array)
total = 0
for number in array 
    total = total + number
  end

  return total
end

def find_item? (array1, example)
  for item in array1
    if example == item 
      return true
    end
  end
  return false
end

def first_key(hash)
  return hash.keys[0]
end

def capital_array(countries)
  capitals = []

for country, data in countries
  capitals << data [:capital]
end
return capitals
end




















