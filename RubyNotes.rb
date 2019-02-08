#Things I've learned for RUBY!!!

puts "this prints texts /w a new line at the end"
print "does what you would expect"

#declaring vars, pretty much python
my_cool_string = "This is a string variable" #implicitly knows that this is a string
my_cool_interger = 122 #implicitly knows that this is an int

#string manipulation
puts my_cool_string.length #counts the lenthg of a str
puts my_cool_string.reverse #reverses a string
puts my_cool_string.upcase #makes string all caps
puts my_cool_string.downcase #makes string all lowercase
puts my_cool_string.capitalize #Caps first letter of string
my_cool_string.capitalize! #updates var, caps first letter


#A note on .method!
#Adding ! at the end of a string manipulation method will
#update the variable without having to create a new one
#example after this comment:        


name = "burt" #creates a var, name, and assigns the string "burt"
name.capitalize! #updates name, it is now "Burt"

#naming conventions here:
var_names = "all_lower_with_underscores"

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
