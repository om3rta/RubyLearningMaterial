#arrays
my_array = [1,2,3,4,5] #<-- Pretty standard
my_2d_array = [[1,2,3],["a","b","c"],["bing","boop","bop"]] #<-- an array with arrays, woah!
#Sorting
my_array.sort! #<-- sorts alpha/numeric starting at 0/a
my_array.sort! { |a, b| b<=>a} #<--reverse sort
#adding to an array:
my_array.push(6) #<--adds 6 to the array
my_array << 7#<-- does the same thing, but with the concatenation operator, looks smooth
puts my_array



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

#deleting from a hash:
my_hash1.delete("shoesize")

#A Note an creating a hash:
#Most hashes in Ruby are created with Symbols for the key
#You can create the symbol easily in a hash like this:
easy_hash = {
    candy: "Yes",
    veggies: "No"
}

#The two keys in this hash are saved as symbols without having to actually
#create the symbol, and use the rocket (=>) notation to tie a value to a key.
#Kinda looks a lot like PYTHOOOON BOYYY!

#hash methods:
easy_hash.each_key {|k| print k, " "} #<---prints each key with a space in between
easy_hash.each_value {|v| print v, " "} #<---prints each value with a space in between
