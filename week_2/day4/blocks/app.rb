def add_one(items)
  result = []

  for item in items 
    result << item + 1
  end
  return result
end

def multiply_by_two(items)
  result = []

  for item in items 
    result << item * 2
  end
  return result
end

def map(items)
  result = []
  for item in items
    result << yield(item)
  end 
  return result
end


def up_to_you
  name = "Craig"
  yield(name)
end

  # def up_to_you
  #   return yield
  # end relates to up_to_you_add_test