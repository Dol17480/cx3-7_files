my_array = [{name: "fred", job: "builder"}, {name: "barney", job: "binman"}]

# puts my_array.map {|person| person[:job]}
result = my_array.map do |person|
  puts person
  person[:job]
end

puts result
