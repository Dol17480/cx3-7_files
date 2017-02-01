require_relative('person')

 class Agent < Person

 def talk
   person_talking = super()
   return "Special agent " + person_talking
   # or return "The name's #{@last_name}, #{name}" does the same with proper Bond line
 end
   
 end
