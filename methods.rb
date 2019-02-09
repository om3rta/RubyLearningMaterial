def greet_peeps(greeting, *friends) #<-- *friends is a Splat argument. This just allows you to pass in more than one argument if you want to.
    #this method takes a greeting, and however many friends
    friends.each { |friend| puts "#{greeting}, #{friend}"}
end

#returning data from a method:
def double_up(number)
    return number * 2
end

greet_peeps("Sup", "Bob", "Travis", "Duke", "Barnabus") #<-- Notice I only have one argument for greeting, but several friends
puts double_up(3) #<-- should print 6