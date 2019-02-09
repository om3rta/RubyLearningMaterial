#cases statements do better than if/esle if something has a lot of paths it could go down
movies = {
    Pet_Semetary: 3,
    Superman: 5,
    Superbad: 8,
    Wonder_Woman: 4,
    Batman: 6,
    Spiderman: 3
    }
  
  puts "What would you like to do?"
  puts "-- Type 'add' to add a movie."
  puts "-- Type 'update' to update a movie."
  puts "-- Type 'display' to display all movies."
  puts "-- Type 'delete' to delete a movie."
  choice = gets.chomp

  case choice #<-- case defines what variable you're looking at for you when statements to follow
  when "add" #<-- this is basically saying "if choices == add"
    puts "What movie would you like to add? "
    title = gets.chomp
    if movies[title.to_sym].nil? 
      puts "What rating does the movie have? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
  when "update"
    puts "What movie would you like to update? "
    title = gets.chomp
    if movies[title.to_sym].nil? 
      puts "That movie does not exist."
    else
      puts "What is the new rating? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    movies.each{|k, v| puts "#{k}: #{v}"}
  when "delete"
    puts "Which title would you like to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "That one isn't in the list"
    else
      movies.delete(title)
      puts "She gone!"
    end
  else
    puts "Error!"
  end