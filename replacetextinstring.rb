#Here's an example of replacing text in a string
puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ") #<--Check the split method. Splits text at a certain character, here it's a space

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end