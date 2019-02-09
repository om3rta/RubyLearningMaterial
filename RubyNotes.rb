#Things I've learned for RUBY!!!

puts "this prints texts /w a new line at the end"
print "does what you would expect"

#declaring vars, pretty much python
my_cool_string = "This is a string variable" #implicitly knows that this is a string
my_cool_interger = 122 #implicitly knows that this is an int

#string manipulation
puts ""
puts my_cool_string.length #counts the lenthg of a str
puts my_cool_string.reverse #reverses a string
puts my_cool_string.upcase #makes string all caps
puts my_cool_string.downcase #makes string all lowercase
puts my_cool_string.capitalize #Caps first letter of string
my_cool_string.capitalize! #updates var, caps first letter

#convert int to str using .to_s:
my_int = 3
my_int=my_int.to_s
puts my_int + " is a string"

#here's some character replacement:
if my_cool_string.include? "s"
    #we will replace 's' with 'th' by using global substitution (gsub)
    my_cool_string.gsub!(/s/, "th")
    puts "THified: #{my_cool_string}"
else
    puts "probably put an s in your string to see how this works, bro"
end

#A note on .method!
#Adding ! at the end of a string manipulation method will
#update the variable without having to create a new one
#example after this comment:        


name = "burt" #creates a var, name, and assigns the string "burt"
name.capitalize! #updates name, it is now "Burt"
puts name

#naming conventions here:
var_names = "all_lower_with_underscores"

#user input
puts "Prompt user to type something here, like what's your name or something?"
user_input = gets.chomp
puts "You wrote #{user_input}"  #<-- this is a good example of String Interpolation, adding the output of a variable to a string
                                #In this case, we add whatever the user inputs to the end of the string "You wrote " and repeat it to the user

#opperators
# == - equals, like 3 == 3
# != - does not equal, like 3 != 4
#<, >, <=, >= - Less than, greater than, less than or equal to, greater than or equal to
# && (and), like 77 < 78 && 77 < 77 would be true AND false, which would ultimately be false
#|| (or), like 3 != 4 || 3 == 4, this would resolve to true because one is actually true
#! (not), like !true is flase and !false is true

#arrays
my_array = [1,2,3,4,5] #<-- Pretty standard
my_2d_array = [[1,2,3],["a","b","c"],["bing","boop","bop"]] #<-- an array with arrays, woah!
#Sorting
my_array.sort! #<-- sorts alpha/numeric starting at 0/a
my_array.sort! { |a, b| b<=>a} #<--reverse sort

#hash, like a library from Python
my_hash1 = {
    "name" => "Bobo",
    "bloodtype" => "O",
    "shoesize" => "12"
}

puts my_hash1
#^-- Hash literal. Explicitly defining what we want

my_hash2 = Hash.new #<--creates a new empty hash
my_hash2["fruit"] = "apple" #<-- adds "fruit" => "apple" to hash
puts my_hash2

#SPLAT!
#A splat allows you to pass multiple arguments to a method, for example:
def greet_peeps(greeting, *friends)
    #this method takes a greeting, and however many friends
    friends.each do |x| puts "#{greeting}, #{friends}"
    end

greet_peeps("Sup", "Bob", "Travis", "Duke", "Barnabus")
