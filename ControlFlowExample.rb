#user input
puts "Prompt user to type something here, like what's your name or something?"
user_input = gets.chomp
puts "You wrote #{user_input}"  #<-- this is a good example of String Interpolation, adding the output of a variable to a string
                                #In this case, we add whatever the user inputs to the end of the string "You wrote " and repeat it to the user

#Control Flow examples:
#if statements, incude if, elsif, else and then end at the, uhh, end.
if user_input.length > 5
    puts "That's a short string"
elsif user_input.length > 0
    puts "That's a really short string" 
else
    puts "Welp, looks like you didn't put anything there and just hit enter. SO SORRY TO BOTHER YOU"    
end

#unless, sort of reverses if/els Check this example

hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

#or, consider this:

problem = false
print "I'm printing this unless problem" unless problem #<-- this will print because there is no problem (problem == false)

#Basically, it's checking to see if hungry is false
