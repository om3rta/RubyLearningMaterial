#.each iterator
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end

#.times
22.times {print "Butts"} #<-- prints the word "Butts" 22 times

#iterate over an array:
nonsense_words = ["woot", "derp", "herp", "poopdiddy", "scoopdiddy"]
nonsense_words.each {|words| puts words}

#itterating over a 2D array:
new_2d_array = [["lime", "green"],["grapefruit", "pink"],["watermellon", "pink"]]
new_2d_array.each do |sub_array|
  sub_array.each do |x|
    puts x
  end
end

#iterating over hash:
play_types = {
  "guitar" => "strum",
  "dulcimer" => "hammer",
  "drums" => "hit",
  "trumpet" => "blow"
}
play_types.each do |instrument, play|
  puts "#{instrument}: #{play}"
end

#also, you can just access the key, or the value