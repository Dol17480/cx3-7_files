# sets = 1
# sets_limit = 4

# while (sets <= sets_limit) #OUTER LOOP
#   puts "Set: #{sets}"

#   reps = 1
#   reps_limit = 12

#   while (reps <= reps_limit) #INNER LOOP
#     puts "Rep: #{reps}"
#     reps += 1
#   end

#   sets += 1
#   puts "Have a rest!"
# end

# puts "Well done!"

number = 1
limit = 10

while (number <= limit)
  multiplier = 1

  
  while (multiplier <= 10)
    result = multiplier * number
    puts "#{result} "
    multiplier += 1
  end
  number += 1
end



# while (true) do
# puts "Please type yes or no"
# line = gets.chomp
# break if (line.downcase == 'yes' || line.downcase == 'no')
# puts "That wasn't yes or no you numpty"
#   end








