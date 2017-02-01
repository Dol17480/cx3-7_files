# 1. For a given person, return their favourite tv show

def find_fave_show(person)
  return person[:favourites][:tv_show]
end

# 2. For a given person, check if they like a particular food

def do_you_like(person,food)
  return person[:favourites][:things_to_eat].include?(food)
end

# 3. Allow a new friend to be added to a given person

def add_friend(person, newfriend)
  return person[:friends].push(newfriend)
end
#

# 4. Allow a friend to be removed from a given person

def remove_friend(person, oldfriend)
  return person[:friends].delete(oldfriend)
end

# 5. Find the total of everyone's money

def monies(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
  end
  return total_money
end

# 6. For two given people, allow the first person to loan a given value of money to the other

def loan(person1, person2, amount)
  if person1[:monies] -= amount
   person2[:monies] += amount
 end
 return person1[:monies] 
end

# 7. Find the set of everyone's favourite food joined together
def everyones_food(people)
  total_food = []
  for person in people
    total_food += person[:favourites][:things_to_eat]
  end
  return total_food
end

# 8. Find people with no friends

def no_friends(people)
  no_friends = []
  for person in people
    if person[:friends].empty?
      no_friends.push(person[:name])
    end
  end
  return no_friends
end

# INSANE
# Find the people who have the same favourite tv show
def group_by_tv_show(people)
  tv_groupings = {}

  for person in people
    tv_show = person [:favourites][:tv_show]
    person_name = person[:name]

    if tv_groupings.has_key?(tv_show)
      tv_groupings[tv_show].push(person_name)

    else
      tv_groupings[tv_show = [person_name]
    end

  end
  unpopular = [
    for show, people in tv_groupings
      unpopular.push(show) if people.length <= 1
    end
    for show in unpopular
      tv_groupings.delete(show)
    end














