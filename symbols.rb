#Symbols
#They're immutable. Probably useful when making keys for hash
#Creating symbols from strings and the other way around:
:my_neato_symbol.to_s
"check_out_this_string".to_sym
"make_this_a_sym".intern #<-- does the same as .to_sym. Internalizes string to symbol

#here's an example of making strings into symbols from an array and putting
#them in a different array:
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s| 
 symbols.push(s.to_sym)
end 
print symbols