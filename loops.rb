#here are some examples of simple loops!

#while loops:
count = 0
while count < 11
    puts count
    count += 1    
end

#until
count = 1
until count > 10
    puts count
    count += 1
end

#for
for num in 1...10
    puts num
end

#a note on inclusivity/exclusivity:
#1...10 is from 1 to 10, not including 10
#1..10 is from 1 to 10, including 10

#loop method
i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

#next (thise one prints even numbers)
i = 20
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i}"
  break if i <= 0
end